# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1/GPL 2.0/LGPL 2.1
#
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
#
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
#
# The Original Code is the Python Computer Graphics Kit.
#
# The Initial Developer of the Original Code is Matthias Baas.
# Portions created by the Initial Developer are Copyright (C) 2004
# the Initial Developer. All Rights Reserved.
#
# Contributor(s):
#
# Alternatively, the contents of this file may be used under the terms of
# either the GNU General Public License Version 2 or later (the "GPL"), or
# the GNU Lesser General Public License Version 2.1 or later (the "LGPL"),
# in which case the provisions of the GPL or the LGPL are applicable instead
# of those above. If you wish to allow use of your version of this file only
# under the terms of either the GPL or the LGPL, and not to allow others to
# use your version of this file under the terms of the MPL, indicate your
# decision by deleting the provisions above and replace them with the notice
# and other provisions required by the GPL or the LGPL. If you do not delete
# the provisions above, a recipient may use your version of this file under
# the terms of any one of the MPL, the GPL or the LGPL.
#
# ***** END LICENSE BLOCK *****
# $Id: rmshader.py,v 1.9 2006/05/26 21:33:29 mbaas Exp $

import sys
import string
import os.path
import re
import glob as _glob
import copy
import shutil
import fnmatch

class SeqString:
    """Sequence string class.

    Sequence strings treat numbers inside strings as integer numbers
    and not as strings. This can be used to sort numerically (e.g.
    ``anim01`` is smaller than ``anim0002``).

    A sequence string is initialized by passing a regular string to
    the constructor. It can be converted back using the :func:`str()` operator.
    The main task of a :class:`SeqString` is comparing two strings which can
    be done with the normal comparison operators. Example:

    >>> a = SeqString('a08')
    >>> b = SeqString('a2')
    >>> a<b
    False
    >>> a>b
    True

    By default, all numbers are treated as unsigned numbers. The constructor
    argument *signedNums* can be used to change this behavior. The value
    can either be a boolean to turn all numbers into signed numbers which means
    any preceding minus sign will be considered to be part of the number or
    you may pass a list of indices to only turn certain numbers into signed
    numbers. The indices may also be negative if you want to count from the
    end. For example, setting *signedNums* to ``[-1]`` will only turn the
    last number (which often is the frame number when dealing with file names)
    into a signed number and leave all other numbers unsigned.
    
    >>> s=SeqString("sequence-2.-012.tif")
    >>> s.getNums()
    [2, 12]
    >>> s=SeqString("sequence-2.-012.tif", signedNums=True)
    >>> s.getNums()
    [-2, -12]
    >>> s=SeqString("sequence-2.-012.tif", signedNums=[-1])
    >>> s.getNums()
    [2, -12]
    """
    
    def __init__(self, s=None, signedNums=None):
        """Constructor.

        The sequence string is initialized with s which can be a regular 
        string, another SeqString or anything else that can be turned into
        a string using str(s). s can also be None which is equivalent
        to an empty string.
        signedNum is either a boolean that can be used to turn all numbers
        into signed numbers or it may be a list containing the indices of
        the numbers that should be treated as signed numbers. An index may
        also be negative to count from the end. By default, all numbers
        are unsigned.
        """
        # This is an alternating sequence of text and number values
        # (always beginning and ending with a text (which might both be empty)).
        # The value part is a tuple (value,numdigits) where value
        # is an integer and numdigits the number of digits the
        # value was made of. The list can never be empty (it always contains
        # at least one string, even when that one is empty).
        # Example: 'anim1_0001.png' -> ['anim', (1,1), '_', (1,4), '.png']
        self._value = [""]
        self._initSeqString(s)
        
        if signedNums is not None:
            if type(signedNums) is bool:
                if signedNums:
                    for i in range(self.numCount()):
                        self._toSignedNum(i)
            elif type(signedNums) is list:
                for idx in signedNums:
                    if type(idx) is not int:
                        raise TypeError("The items inside the 'signedNums' list must be integers.")
                    self._toSignedNum(idx)
            else:
                raise TypeError("Argument 'signedNums' must be a boolean or a list of integers.")
    
    def __repr__(self):
        return "'%s'"%self.__str__()

    def __str__(self):
        """Convert the sequence string into a normal string.

        The number of digits is maintained. The result is the original
        string.
        """
        return self._valueToStr(self._value)

    def _valueToStr(self, valueList):
        """Convert a value list into a string again.
        
        valueList is a list that has the same form as self._value.
        """
        res=""
        for i, vn in enumerate(valueList):
            if i%2==0:
                res += vn
            else:
                val,ndigits = vn
                a = '%'+"0%dd"%ndigits
                res += a%val
        return res

    def __eq__(self, other):
        return self._cmp(other)==0
    
    def __ne__(self, other):
        return self._cmp(other)!=0
    
    def __lt__(self, other):
        return self._cmp(other)<0
    
    def __le__(self, other):
        return self._cmp(other)<=0

    def __gt__(self, other):
        return self._cmp(other)>0
    
    def __ge__(self, other):
        return self._cmp(other)>=0

    def _cmp(self, other):
        """Comparison operator.

        The text parts are treated as strings, the number parts as numbers
        (e.g. 'a08' is greater than 'a2').
        If other is a regular string, then only a regular string comparison
        is done.
        """
        if other is None:
            return 1
        if not isinstance(other, SeqString):
            if not isinstance(other, basestring):
                return 1
            # If other is a regular string, then turn self into a string as well
            # and use normal string comparison
            s = str(self)
            if s<other:
                return -1
            elif s>other:
                return 1
            else:
                return 0

        # Check the 'structure' of the strings first.
        # The numeric comparison is only done when the strings have the same
        # text/num patterns.
        res = self.match_cmp(other)
        if res!=0:
            return res

        # Compare the individual components of the values side by side
        for i, (a,b) in enumerate(zip(self._value, other._value)):
            if i%2==1:
                # Get the numbers
                a = a[0]
                b = b[0]

            if a<b:
                return -1
            if a>b:
                return 1

        # If we are here everything has been equal so far, but maybe
        # one string has one component more in _value
        s1 = len(self._value)
        s2 = len(other._value)
        if s1<s2:
            return -1
        elif s1>s2:
            return 1
        else:
            return 0
        
    def _initSeqString(self, s):
        """Initialize the sequence string with a string.

        s can either be a regular string, another sequence string (to create
        a copy) or anything else that can be turned into a string using str(s).
        s can also be None which is equivalent to passing an empty string.
        Internally, the string is split into its text components and
        number components.
        """
        if s is None:
            s = ""
            
        s = str(s)
        textbuf = ""
        numtup = (0,0)
        res = []
        # State
        z = 0

        for c in s:
            # State: Collect text
            if (z==0):
                # Is this the beginning of a number?
                if (c in string.digits):
                    res.append(textbuf)
                    numtup  = (0,1)
                    textbuf = c
                    z = 1
                # Store text in buffer
                else:
                    textbuf += c
            # State: Collect number
            else:
                # Another digit?
                if (c in string.digits):
                    numtup = (0,numtup[1]+1)
                    textbuf += c
                # No more digits
                else:
                    numtup = (int(textbuf),numtup[1])
                    res.append(numtup)
                    textbuf = c
                    z = 0

        # Add last value
        if z==0:
            res.append(textbuf)
        else:
            numtup = (int(textbuf),numtup[1])
            res.append(numtup)
            res.append("")

        self._value = res

    def _toSignedNum(self, idx):
        """Turn a number into a signed number.
        
        If the number is preceded by a '-' character, that character is removed
        from the string part and the number is negated.
        idx is the index of the number. The index may also be negative.
        An IndexError exception is thrown if the index is out of range. 
        """
        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")
        
        idx *= 2
        strVal = self._value[idx]
        if strVal.endswith("-"):
            # Negate the value following the string
            numTup = self._value[idx+1]
            self._value[idx+1] = (-numTup[0], numTup[1]+1)
            # Remove the '-' from the string
            self._value[idx] = strVal[:-1]

    def match(self, template, numPos=None):
        """Check if one sequence string is equal to another except for one or all numbers.

        Returns ``True`` if the text parts of *self* and *template* are equal,
        i.e. both strings belong to the same sequence. *template* must be
        a :class:`SeqString` object.
        
        *numPos* is the index of the number that is allowed to vary. For example,
        if *numPos* is -1, only the last number in a string may be different for two
        strings to be in the same sequence. All other numbers must match exactly
        (including the padding). If *numPos* is ``None``, all numbers may vary.
        """
        if not isinstance(template, SeqString):
            raise TypeError("The template argument must be a SeqString object")

        # The lengths of the value lists must be equal
        if len(self._value)!=len(template._value):
            return False
        
        if numPos is not None:
            if numPos<0:
                numPos = self.numCount()+numPos
            numPos = 2*numPos + 1
        
        for i, (va,vb) in enumerate(zip(self._value, template._value)):
            # Only compare the text parts and ignore the numbers
            if i%2==0:
                if va!=vb:
                    return False
            elif numPos is not None and i!=numPos and va!=vb:
                return False
            
        return True

    def match_cmp(self, template):
        """Comparison function to build groups.

        Compare the text parts (the group name) of two sequence strings.
        Numbers within the strings are ignored.
        
        0 is returned if *self* and *template* belong to the same group, 
        a negative value is returned if *self* comes before *template* and
        a positive value is returned if *self* comes after *template*.
        """
        a = self.groupRepr()
        b = template.groupRepr()
        if a<b:
            return -1
        elif a>b:
            return 1
        else:
            return 0

    def fnmatch(self, pattern):
        """Match the string against a file name pattern.
        
        Similar to the function in the :mod:`fnmatch` module, this function
        can be used to match the string against a pattern that may contain
        wildcards (``"*"``, ``"?"``). Additionally, the pattern may contain
        placeholders for numbers which is either a ``"#"`` for a 4-padded
        number or a sequence of ``"@"`` characters for a custom padded number.
        Note that matching against a number pattern of a certain width will
        also match numbers whose width is larger unless they have been padded
        with zeros.
        Returns ``True`` if the string matches the input pattern.
        """
        patternList = []
        s = pattern
        while 1:
            m = re.search(r"#|@+", s)
            if m is None:
                patternList.append(s)
                break
            patternList.append(s[:m.start()])
            p = m.group()
            if p=="#":
                patternList.append(4)
            else:
                patternList.append(len(p))
            s = s[m.end():]
    
        return self._fnmatch(self._value, patternList)
    
    def _fnmatch(self, valueList, patternList):
        """Helper function for fnmatch.
        
        valueList is a list of the same form as self._value.
        patternList is a list of the form [string, int, string, int, ...]
        where string is a fnmatch pattern and the integer is the number of
        digits that a number at this position must have (larger numbers are
        allowed as well as there could have been an overflow when the original
        string was created).
        
        patternList must have an odd number of items (which also means it must
        not be empty).
        """
        prefixPattern = patternList[0]

        # Is there only one item in patternList? Then there is no number anymore
        # and we just have to do a normal fnmatch call...        
        if len(patternList)==1:
            s = self._valueToStr(valueList)
            return fnmatch.fnmatch(s, prefixPattern) 
        
        numDigits = patternList[1]
        
        # Iterate over all numbers in the valueList and check if it fulfills
        # the numDigits constraint. If it does, check whether the preceding
        # string matches the string prefix pattern. If all that matches, we
        # can call _fnmatch recursively with the remaining parts.
        for i in range(1,len(valueList), 2):
            val,ndig = valueList[i]
            # Is the current number a match for the pattern?
            if ndig==numDigits or (ndig>numDigits and not self._valueToStr(["",(val,ndig)]).startswith("0")):
                # Check if the string prior to the number matches as well
                prefix = self._valueToStr(valueList[:i])
                if fnmatch.fnmatch(prefix, prefixPattern):
                    if self._fnmatch(valueList[i+1:], patternList[2:]):
                        return True
    
        return False

    def groupRepr(self, numChar="*"):
        """Return a template string where the numbers are replaced by the given character.
        """
        res=""
        numChar = str(numChar)
        for i,v in enumerate(self._value):
            if i%2==0:
                res += v
            else:
                res += numChar
        return res   

    def numCount(self):
        """Return the number of number occurrences in the string.

        Examples:
        
        - ``anim01.tif``    -> 1
        - ``anim1_018.tif`` -> 2
        - ``anim``          -> 0
        """
        return len(self._value)//2

    def getNum(self, idx):
        """Return a particular number inside the string.

        *idx* is the index of the number (0-based) which may also be
        negative. The return value is an integer containing the number
        at that position. 
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        """

        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")

        return self._value[idx*2+1][0]

    def getNumStr(self, idx):
        """Return a particular number as a string just as it appears in the original string.

        *idx* is the index of the number (0-based) which may also be
        negative. The return value is a string that contains the number
        as it appears in the string (including padding).
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        """

        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")

        val,ndigits = self._value[idx*2+1]
        a = '%'+"0%dd"%ndigits
        return a%val
    
    def getNums(self):
        """Return all numbers.
        
        Returns a list of all numbers in the order as they appear in the string. 
        """
        res=[]
        for i in range(self.numCount()):
            res.append(self.getNum(i))

        return res

    def setNum(self, idx, value, width=None):
        """Set a new number.

        *idx* is the index of the number (may be negative) and *value*
        is the new integer value. If *width* is given, it will be the new
        width of the number, otherwise the number keeps its old width.
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        
        Note: It is possible to set a negative value. But when converted to
        a string and then back to a sequence string again, that negative
        number becomes a positive number and the minus symbol is part of
        the preceding text part.
        """
        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")

        if width is None:
            width = self._value[idx*2+1][1]
        self._value[idx*2+1] = (int(value),int(width))

    def setNums(self, nums):
        """Set all numbers at once.
        
        *nums* is a list of integers. The number of values may not
        exceed the number count in the string, otherwise an :exc:`IndexError`
        exception is thrown. There may be fewer items in *nums* though in
        which case the remaining numbers in the string keep their old value.
        """
        for i,val in enumerate(nums):
            self.setNum(i, val)

    def getNumWidth(self, idx):
        """Return the number of digits of a particular number.

        *idx* is the index of the number (may be negative).
        Raises an :meth:`IndexError` exception when *idx* is out of range.
        """
        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")

        return self._value[idx*2+1][1]

    def setNumWidth(self, idx, width):
        """Set the number of digits of a number.

        *idx* is the index of the number (may be negative) and *width*
        the new number of digits.
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        """
        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")

        width = int(width)
        val = self._value[idx*2+1][0]
        self._value[idx*2+1] = (val,width)

    def getNumWidths(self):
        """Return the number of digits of all numbers.
        
        Returns a list of width values.
        """
        res=[]
        for i in range(self.numCount()):
            res.append(self.getNumWidth(i))

        return res

    def setNumWidths(self, widths):
        """Set the number of digits for all numbers.
        
        *widths* must be a list of integers. The number of values may not
        exceed the number count in the string, otherwise an :exc:`IndexError`
        exception is thrown.
        """
        for i,w in enumerate(widths):
            self.setNumWidth(i, w)
            
    def deleteNum(self, idx):
        """Delete a number inside the string.

        This is the same as replacing the number by an empty string.
        
        *idx* is the index of the number (0-based) which may also be
        negative.
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        """
        self.replaceNum(idx, "")

    def replaceNum(self, idx, txt):
        """Replace a number by a string.

        The string is merged with the surrounding string parts.
        
        *idx* is the index of the number (0-based) which may also be
        negative. *txt* is a string that will replace the number.
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        """
        if idx<0:
            idx = self.numCount()+idx
        if idx<0 or idx>=self.numCount():
            raise IndexError("index out of range")

        # Insert the text
        self._value[idx*2] += str(txt)
        # Concatenate the adjacent texts
        if len(self._value)>idx*2+2:
            self._value[idx*2] += self._value[idx*2+2]
        # Remove the number
        del self._value[idx*2+1:idx*2+3]

    def replaceStr(self, idx, txt):
        """Replace a string part by another string.

        *idx* is the index of the sub-string (0-based) which may also be
        negative. *txt* is a string that will replace the sub-string.
        Raises an :exc:`IndexError` exception when *idx* is out of range.
        """
        
        if idx<0:
            idx2 = len(self._value)+2*idx
            # Does the value list end in a text part? Then we need to adjust the index
            if len(self._value)%2==1:
                idx2 += 1
        else:
            idx2 = 2*idx
        
        # Check if the index is valid
        if idx2<0 or idx2>=len(self._value):
            raise IndexError("index out of range")

        # Replace the text
        self._value[idx2] = str(txt)


class Sequence:
    """A list of names/objects that all belong to the same sequence.
    
    The sequence can store the original objects that are associated with a
    name or it can only store the names (as :class:`SeqString` objects). 
    Whether the original objects are available or not depends on how the
    sequence was built. If the *nameFunc* parameter was used when building
    the sequence (see :func:`buildSequences`), then the original objects will be available.
    
    The class can be used like a list (using :func:`len()`, index operator or
    iteration).
    """
    
    def __init__(self):
        """Constructor.
        """
        # A list of file names (stored as SeqString objects)
        self._names = []
        
        # The actual objects. This is either a list that always has as many
        # items as _names or it is None.
        self._objects = None
    
    def __str__(self):
        placeholder,ranges = self.sequenceName()
        if len(ranges)==0:
            return placeholder
        else:
            infoStr = "; ".join(ranges)
            if len(infoStr)>20:
                infoStr = "%d items"%len(self._names) 
            return "%s %s"%(placeholder, infoStr)
            #return "%s"%placeholder

    def __repr__(self):
        return "<Sequence %s>"%self.__str__()
    
    def __len__(self):
        """Return the length of the sequence.
        """
        return len(self._names)
    
    def __getitem__(self, idx):
        """Return the object at position idx.
        
        The return value is either the original object that was stored
        in the sequence or it is a SeqString containing the name if the
        original object was just a string.
        """
        if self._objects is None:
            return self._names[idx]
        else:
            return self._objects[idx]
    
    def iterNames(self):
        """Iterates over the object names.
        
        Yields :class:`SeqString` objects.
        """
        return iter(self._names)
    
    def iterObjects(self):
        """Iterate over the objects.
        
        Yields the original objects or the names as :class:`SeqString` objects
        if the objects haven't been stored in the sequence.
        Using this method is equivalent to iterating over the sequence
        object directly.
        """
        if self._objects is None:
            return self.iterNames()
        else:
            return iter(self._objects)
    
    def match(self, name, numPos=None):
        """Check if a name matches the names in this sequence.
        
        *name* is a string or :class:`SeqString` object that is tested if
        it matches the names in the sequence.
        If the sequence doesn't contain any name at all yet, then any name
        will match.
        
        *numPos* is an integer that specifies which number is allowed to
        vary. If *numPos* is ``None``, all numbers may vary.
        """
        # Turn the name into a SeqString
        if not isinstance(name, SeqString):
            name = SeqString(name)
        
        if len(self._names)==0:
            return True
        else:
            return self._names[0].match(name, numPos)

    def append(self, name, obj=None):
        """Append a name/object to the end of the sequence.
        
        *name* can be a :class:`SeqString` object or a regular string.
        The name must match the names in the sequence, otherwise a
        :exc:`ValueError` exception is thrown.
        
        *obj* can be any Python object that is stored alongside the name
        (this is supposed to be the actual object that has the given name).
        In any sequence, either all or none of the names must be associated
        with an object. An attempt to append a name without an object to a
        sequence that has objects will trigger a :exc:`ValueError` exception.
        
        Usually, you won't call this method manually to build a sequence
        but instead use the :func:`buildSequences()` function which returns
        initialized ``Sequence`` objects.
        """
        # Turn the name into a SeqString
        if not isinstance(name, SeqString):
            name = SeqString(name)

        if not self.match(name):
            placeholder,_ranges = self.sequenceName()
            raise ValueError("Cannot add '%s' to sequence %s. The name doesn't match the sequence."%(name, placeholder))

        if obj is not None:
            if self._objects is None:
                if len(self._names)==0:
                    self._objects = []
                else:
                    raise ValueError("objects must be given for all or none of the names")
            self._objects.append(obj)
        elif self._objects is not None:
            raise ValueError("objects must be given for all or none of the names")
            
        self._names.append(name)
        
    def sequenceNumberIndex(self):
        """Return the index of the sequence number.
        
        Returns the index of the number that has the most variation among its
        values. If two number positions have the same variation, then the last
        number is returned.
        Returns ``None`` if there is no number at all.
        """
        ranges = self.ranges()
        
        # This will be the index of the number that varies most (i.e. the index of the sequence number)
        seqNumIdx = None
        maxValues = -1
        for i,rng in enumerate(ranges):
            lr = len(rng)
            if lr>=maxValues:
                maxValues = lr
                seqNumIdx = i
        
        return seqNumIdx
        
    def ranges(self):
        """Returns a list of all the number ranges in the sequence.
        
        The return value is a list of :class:`Range` objects. There are as many
        ranges as there are separate numbers in the names. The ranges
        are given in the same order as the corresponding number appears in
        the names.
        """
        _name,rangeStrs = self._nameAndRangeStrs()
        return list(map(lambda x: Range(x), rangeStrs))

    def sequenceName(self):
        """Return a sequence placeholder and range strings.
        
        Returns a tuple (*placeholder*, *ranges*) where *placeholder* is the
        name of a member of the sequence where all numbers have been replaced
        by ``'#'`` (0-padded number with 4 digits) or one or more ``'@'`` (padded
        number with as many digits as there are ``'@'`` characters. Just a single
        ``'@'`` represents an unpadded number). If the sequence contains inconsistent
        padding, the number is replaced by ``'*'``.
        The number is not replaced at all if there is only one single value
        among all file names anyway.
        *ranges* is a list of strings where each string describes the range
        of values of the corresponding number in the placeholder string.
        
        The returned information is meant to be displayed to the user as
        information about the sequence. It is not possible to reconstruct
        all original file names (unless the placeholder contains no more than
        one substitution).
        """
        name,rangeStrs = self._nameAndRangeStrs(ignoreSingleValues=True)
        return name,rangeStrs
        
        
    def _nameAndRangeStrs(self, ignoreSingleValues=False):
        """Helper method for sequenceName() and ranges().
        
        Returns a tuple (placeholder, ranges). See sequenceName().
        if ignoreSingleValues is True, any number in the sequence names
        whose range only consists of a single value will not be replaced
        by # or @ and will not appear in the "ranges" list.
        """
        if len(self._names)==0:
            return "", []
        
        # How many numbers do we have in the string?
        n = self._names[0].numCount()
        if n==0:
            return str(self._names[0]), []
        
        # The minimum width of every number
        minWidths = self._names[0].getNumWidths()
        # The maximum width of every number
        maxWidths = list(minWidths)
        # A flag indicating whether the number is unpadded or not
        unpadded = len(minWidths)*[True]
        # A list of values
        values = []
        for i in range(n):
            values.append([])
                
        # Collect all required values from the names
        for name in self._names:
            for i in range(name.numCount()):
                v = name.getNum(i)
                w = name.getNumWidth(i)
                
                # Update the minimum width
                minWidths[i] = min(w, minWidths[i])
                # Update the maximum width
                maxWidths[i] = max(w, maxWidths[i])
                # Update the unpadded flag
                if len(str(v))<w:
                    unpadded[i] = False
                # Update the value list (don't append if the last value is the same as v)
                if len(values[i])==0 or values[i][-1]!=v:
                    values[i].append(v)
                    
        # Compute the sequence name that has the numbers replaced by placeholders
        res = copy.deepcopy(self._names[0])
        rangeStrs = []
        for i in range(len(minWidths)):
            # If there is only one single value anyway then just leave the number
            if ignoreSingleValues and len(values[i])==1:
                # The index is 0 because previous number have already been replaced by strings
                s = res.getNumStr(0)
            else:
                rangeStrs.append(compactRange(values[i]))
                if minWidths[i]==maxWidths[i]:
                    n = minWidths[i]
                    s = "%"+"%02d"%n+"d"
#                    if n==4:
#                        s = "%04d"
#                    else:
#                        s = n*"@"
                elif unpadded[i]:
                    n = minWidths[i]
                    s = n*"@"
                else:
                    s = "*"
            # The number index is always 0 because we are replacing the numbers
            # one by one (which reduces the numcount)
            res.replaceNum(0, s)
            
        return str(res), rangeStrs


class Range:
    """Range class.
    
    This class represents a sorted sequence of integer values (frame numbers).
    The sequence is composed of a number of sub-ranges which have a begin,
    an optional end and an optional step number. If the end is omitted,
    the sequence will be infinite.

    Examples:
    
      >>> list(Range("1,5,10"))
      [1, 5, 10]
      >>> list(Range("1-5"))
      [1, 2, 3, 4, 5]
      >>> list(Range("2-8x2"))
      [2, 4, 6, 8]
      >>> list(Range("1-3,10-13"))
      [1, 2, 3, 10, 11, 12, 13]

    The range object supports the :func:`len()` operator, comparison operators,
    the :obj:`in` operator and iteration. Examples:
    
      >>> rng = Range("1-2,5")
      >>> len(rng)
      3
      >>> for i in rng: print i
      ... 
      1
      2
      5
      >>> 3 in rng
      False
      >>> 5 in rng
      True
      >>> Range("1-3")==Range("1,2,3")
      True
      >>> Range("1-5")==Range("2-6")
      False
    """
    
    def __init__(self, rangeStr=None):
        """Constructor.
        """
        # The individual sub-ranges.
        # This is a list of tuples (begin,end,step) where each value is an integer.
        # begin is the first value of the range, end the last value or None
        # for an infinite sub-range. step is the difference between subsequent
        # values.
        # The following conditions must always be met by all items:
        # - end>=begin (if end is not None)
        # - (end-begin)%step == 0
        self._ranges = []
        
        # Set the initial range
        self.setRange(rangeStr) 
            
    def __str__(self):
        """Return a string describing the range.
        """
        rangeStrs = []
        for begin,end,step in self._ranges:
            if begin==end:
                rangeStrs.append(str(begin))
            else:
                if step==1:
                    stepStr = ""
                else:
                    stepStr = "x%s"%step
                    
                if end is None:
                    endStr = ""
                else:
                    endStr = str(end)
                    
                rangeStrs.append("%s %s %s"%(begin,endStr,stepStr))
        
        return ",".join(rangeStrs)
    
    __repr__ = __str__
    
    def __eq__(self, other):
        """Equality operator
        """
        if not isinstance(other, Range):
            return False
        
        return self._ranges==other._ranges

    def __ne__(self, other):
        """Inequality operator
        """
        if not isinstance(other, Range):
            return True
        
        return self._ranges!=other._ranges
    
    def __len__(self):
        """Return the number of values in the sequence.
        
        A ValueError exception is thrown if the sequence is infinite.
        """
        res = 0
        for begin,end,step in self._ranges:
            if end is None:
                raise ValueError("Cannot return length of infinite range")
            res += ((end-begin)//step)+1
        return res
            
            
    def __iter__(self):
        """Iterate over all individual values in the range.
        
        The values are reported in increasing order. No value is reported twice.
        Note that the sequence will be infinite if isInfinite() returns True.
        """
        # Copy the _ranges list and convert the tuples to lists.
        # The "begin" value will be increased during the iteration.
        currentValues = list(map(lambda x: list(x), self._ranges))
        
        # Advance all sub-ranges in parallel and always yield the minimum
        # value. The ensures that the iteration is done in order and no value
        # is reported twice.
        while len(currentValues)>0:
            # The next value is the minimum "begin" value...
            nextVal = min(map(lambda x: x[0], currentValues))
            # Report the value
            yield nextVal

            # Now increase all "begin" values that are equal to the current value
            for i in range(len(currentValues)):
                current,end,step = currentValues[i]
                if current==nextVal:
                    current += step
                    if end is not None and current>end:
                        # Replace the tuple with None (so that it gets removed later on)
                        currentValues[i] = None
                    else:
                        # Set the new step value
                        currentValues[i][0] = current
                    
            # Remove the deleted items (the ones that are None)
            currentValues = list(filter(lambda x: x is not None, currentValues))
    
    def __contains__(self, val):
        """Check if a value is inside the range.
        
        *val* is an integer that is checked against the range. The method
        returns ``True`` when the value is part of the range.
        """
        for begin,end,step in self._ranges:
            if val>=begin and (end is None or val<=end) and (val-begin)%step==0:
                return True
        return False
    
    def isInfinite(self):
        """Check if the range is infinite.
        
        Examples:
        
          >>> Range("1-5").isInfinite()
          False
          >>> Range("1-").isInfinite()
          True
        """
        for _begin,end,_step in self._ranges:
            if end is None:
                return True
            
        return False

    def setRange(self, rangeStr):
        """Initialize the range object with a new range string.
        
        The range string may contain individual numbers or ranges separated by
        comma. The individual ranges are specified by a begin, an optional
        end (inclusive) and an optional step number. Passing ``None`` is
        equivalent to passing an empty string.
        
        This is the opposite operation to e :func:`compactRange()` function.
        """
        
        if rangeStr is None:
            rangeStr = ""

        if type(rangeStr) is not str:
            raise TypeError("The rangeStr argument must be a string")

        reRange = re.compile(r"(-?[0-9]+)(?:-(-?[0-9]*)(?:x([0-9]+))?)?$")

        ranges = []
        for rs in rangeStr.split(","):
            rs = rs.strip()
            if rs=="":
                continue
            # Matches a single number, a range without step and a range with step
            m = reRange.match(rs)
            if m is not None:
                begin = int(m.group(1))
                end = m.group(2)
                step = m.group(3)
                if step is None:
                    step = 1
                else:
                    step = int(step)
                if end is None:
                    end = begin
                else:
                    if end=="":
                        end = None
                    else:
                        end = int(end)
                        # Adjust the end so that it is actually part of the
                        # sequence (i.e. 1-10x2 -> 1-9x2)
                        end -= (end-begin)%step
                if end is None or end>=begin:
                    ranges.append((begin,end,step))
            else:
                raise ValueError("Invalid range string: %s"%rs)

        ranges = self._normalizeRanges(ranges)
        self._ranges = ranges
        
    def _normalizeRanges(self, ranges):
        """Normalize the given ranges.
        
        ranges is a list of range tuples (just like self._ranges).
        Sorts the ranges, merges them if possible (1,2,3 -> 1-3) or
        splits them up so that they don't overlap (2-20x2,11 -> 2-10x2,11,12-20x2).
        Returns a new range list (the input list gets destroyed).
        """
        if len(ranges)==0:
            return []

        ranges.sort()
        
        newRanges = []
        # The current range
        rng = ranges.pop(0)
        while len(ranges)>0:
            # Get the next range
            nextRng = ranges.pop(0)
            
            # Handle range overlaps
            rngs = self._resolveRangeOverlap(rng, nextRng)
            if rngs is not None:
                rng = rngs[0]
                # Only 1 range? Then nextRange was completely contained in rng, so get a new range
                if len(rngs)>1:
                    # Continue with the adjusted ranges (insert them into the range
                    # list and sort again because the order may have changed)
                    ranges.extend(rngs[1:])
                    ranges.sort()
                continue
            
            # Merge the ranges if possible...
            rng,nextRng = self._mergeRanges(rng, nextRng)
            if nextRng is not None:
                newRanges.append(rng)
                rng = nextRng
            
        # Append the last range
        newRanges.append(rng)
        
        # Final step that moves end values to the subsequent range if this
        # makes the sub-ranges "nicer".
        for i in range(len(newRanges)-1):
            begin1,end1,step1 = newRanges[i]
            begin2,end2,step2 = newRanges[i+1]
            # Can the last value of the current range be moved into the subsequent
            # range and the current range would then only be one single value?
            # (Example: 1-5x4,6-10 -> 1,5-10)
            if end1==begin2-step2 and begin1+step1==end1:
                newRanges[i] = (begin1,begin1,1)
                newRanges[i+1] = (end1,end2,step2)
        
        return newRanges
    
    def _resolveRangeOverlap(self, rng1, rng2):
        """Resolve overlapping ranges.
        
        rng1 and rng2 are two adjacent ranges in sorted order (rng2 must
        not be before rng1).
        Returns a list of 1-3 ranges where the first range is guaranteed
        to be non-overlapping. The other ranges are in sort order but may
        still overlap (they will be handled in a subsequent iteration).
        Returns None when rng1 and rng2 don't overlap at all. 
        
        This is a helper method for _normalizeRanges().
        """
        begin1,end1,step1 = rng1
        begin2,end2,step2 = rng2
        
        # No overlap? Then don't modify anything
        if end1 is not None and begin2>end1:
            return None
        
        # The ranges overlap...
        
        # Remove all initial values from rng2 that are also part of rng1.
        # First check if begin2 is part of rng1
        if (begin2-begin1)%step1==0:
            # Does rng2 use a step size that is a multiple of the step size of rng1?
            if step2%step1==0:  #step1==step2:
                # Does rng2 completely lie within rng1? Then just ignore rng2
                if end1 is None or (end2 is not None and end2<=end1):
                    return [rng1]
                else:
                    # Set the begin of rng2 to the first value behind the end of rng1
                    n = ((end1-begin2)//step2)+1
                    begin2 += n*step2
            # Different steps, so only the first value is identical
            else:
                # Is rng2 just one single value? Then we can ignore rng2
                # (because this value is also part of rng1)
                if begin2==end2:
                    return [rng1]
                else:
                    begin2 += step2

            # If the ranges don't overlap anymore, then we are done.
            if end1 is not None and begin2>end1:
                return [rng1,(begin2,end2,step2)]

        
        # At this point, it is guaranteed that...
        # - ...rng1 and rng2 don't begin with the same value (i.e. begin1<begin2 is always true)
        # - ...begin2 is not part of rng1
        # - ...rng1 and the adjusted rng2 still overlap
        
        res = []
        # Split off the first part of rng1 (everything that is before rng2)
        # -> adjust rng1 so that it only contains the remaining range
        n = (begin2-begin1-1)//step1
        e1 = begin1+n*step1
        res.append((begin1,e1,step1))
        begin1 = e1+step1

        # begin1 is now greater than begin2 (they can't be equal because we know
        # that begin2 is not part of the initial rng1)

        res.append((begin2,end2,step2))
        res.append((begin1,end1,step1))
        
        # res now contains 3 ranges. The first one is guaranteed to be unique
        # and doesn't overlap anymore. The other two may still overlap but
        # this is dealt with in a subsequent iteration.
        
        return res
    
    def _mergeRanges(self, rng1, rng2):
        """Merge two ranges if possible.
        
        Returns the new ranges. The second range may become None if it was
        entirely consumed by the first range.
        
        The input ranges must be sorted (i.e. rng2 must not be *before* rng1).
        
        This is a helper method for _normalizeRanges().
        """
        begin1,end1,step1 = rng1
        begin2,end2,step2 = rng2
        
        # If range1 is just a single value, then we can always merge at least
        # the first value of range2 (as we are free to change the step).
        if begin1==end1:
            step1 = begin2-end1
            
        # If range2 does not start right behind range1, then there is nothing to merge
        if end1 is None or begin2!=end1+step1:
            return rng1,rng2
        
        # Can the entire range2 be merged into range1? (this is the case if
        # the step size is identical or range2 is just a single value anyway)
        if step1==step2 or begin2==end2:
            return (begin1,end2,step1),None
        # Only put the first value of range2 into range1
        else:
            return (begin1,begin2,step1), (begin2+step2, end2, step2)


class SeqTemplate:
    """Sequence name template class.
    
    An instance of this class represents a template string that may contain
    patterns that will be substituted by numbers.
    This can be used to generate the individual names for an output sequence.
    
    Example:
    
      >>> tmpl = SeqTemplate("foo#.tif")
      >>> tmpl([17])
      'foo0017.tif'
      >>> tmpl=SeqTemplate("foo@@_#.tif")
      >>> tmpl([2,17])
      'foo02_0017.tif'
      >>> tmpl=SeqTemplate("foo@@[2]_#[1].tif")
      >>> tmpl([2,17])
      'foo17_0002.tif'
      >>> tmpl=SeqTemplate("foo{2*#+1}.tif")
      >>> tmpl([5])
      'foo0011.tif'
    """
    
    def __init__(self, template):
        """Constructor.
        
        template is a string that contains substitution patterns. The patterns
        may be composed of a number of @ characters or a # character.
        Directly following the pattern there may be an optional integer index
        in brackets that refers to a particular source number that will be used
        during the substitution (e.g. @@[1], #[2]).
        The pattern may also include an entire expression in Python syntax.
        In this case, the above simple expression must be enclosed in curly
        braces (e.g. {#[-1]+10}, {2*@@@@}).
        """
        
        self.template = template
        
        seqStr,valExprs,indices,hasExplicitIndex = self._splitTemplate(template)
        self._templateSeqString = seqStr
        self._valExprs = valExprs
        self._exprIndices = indices
        self.hasExplicitIndex = hasExplicitIndex
        
    def __call__(self, values):
        """An alternative way to call the substitute() method.
        """
        return self.substitute(values)
        
    def substitute(self, values):
        """Return a string that uses the given input numbers.
        
        The substitution patterns in the template string are replaced by
        the given numbers. *values* must be a list of objects that can be
        turned into integers.
        It is the callers responsibility to make sure that *values* contains
        enough numbers.
        If any number expression fails, a :exc:`ValueError` exception is thrown
        (this is also the case when an expression refers to a value in
        the input list that is not available).
        
        Calling this method is equivalent to using the object as a callable.
        """
        # Make sure we have integers
        values = [int(v) for v in values]
        
        # Evaluate the number expressions...
        nums = []
        for expr in self._valExprs:
            try:
                nums.append(eval(expr, {"n":values}))
            except:
                raise ValueError("Error in sequence number expression %s: %s"%(expr,sys.exc_info()[1]))
        
        # Set the numbers in the template and return the result as a plain string.
        self._templateSeqString.setNums(nums)
        return str(self._templateSeqString)
    
    def expressionIndices(self, inputSize):
        """Return the indices of the source values that the number expressions refer to.
        
        *inputSize* is the length of the value sequence that will get passed
        to :meth:`substitute()`. This is used to resolve negative indices. The
        result may still contain negative indices if any index in the expressions
        is out of range. The order of the values in the list is the same
        order as the expressions appear in the template.
        The return value can be used to check if an expression would produce
        an :exc:`IndexError` exception.
        
        Example:
        
          >>> t=SeqTemplate("foo#_#")
          >>> t.expressionIndices(2)
          [0, 1]
          >>> t=SeqTemplate("foo#[-1]_#[1]")
          >>> t.expressionIndices(2)
          [1, 0]
          >>> t.expressionIndices(3)
          [2, 0]
        """
        res = []
        for i in self._exprIndices:
            if i<0:
                i = inputSize+i
            res.append(i)
        return res
        
    def _splitTemplate(self, template):
        """Split a template into a sequence string and value expressions.
        
        template is a string that contains substitution patterns. The patterns
        may be composed of a number of @ characters or a # character.
        Directly following the pattern there may be an optional integer index
        in brackets that refers to a particular source number that will be used
        during the substitution (e.g. @@[1], #[2]).
        The pattern may also include an entire expression in Python syntax.
        In this case, the above simple expression must be enclosed in curly
        braces (e.g. {#[-1]+10}, {2*@@@@}).
        
        The return value is a tuple (seqStr, valExprs, indices, hasExplicitIndex)
        where seqStr is a sequence string that has as many number components
        as there were substitution patterns in the template string. The text
        parts of the sequence string are identical to the template, the numbers
        will all be 0. valExprs is a list of strings that contain the expressions
        that have to be used to obtain the final number value. The expressions
        use a variable n which must be a list of integers.
        indices is a list of integer indices that refer to the source number
        that each expression is using. This is the array index that appears
        in the expression. The numbers may still be negative.
        hasExplicitIndex is a boolean that indicates whether the template
        had any substitution pattern where the number index was specified explicitly.
        
        The substitution can then be performed by evaluating the expressions
        and setting the resulting numbers in the sequence string.
        """
        tmpl = template.replace("#", "@@@@")
        # Regular expression that detects a substitution pattern.
        # There are two variants:
        # 1. A number of @ characters, followed by an optional index (@@@2)
        # 2. A full expression enclosed in {} ({@@2+10})
        patternExp = re.compile(r"(@+)(?:\[(-?[0-9]+)\])?|\{[^@]*(@+)(?:\[(-?[0-9]+)\])?(.*)\}")
        
        # The individual tokens for the sequence string input. The text parts
        # will only be represented by a single "*" (to make sure they don't
        # contain any numbers). The number parts will be composed of "0" with
        # the correct padding.
        toks = []
        # For every "*" in toks, this list will contain the corresponding real
        # string. These strings are replaced after the SeqString has been created.
        strToks = []
        # The final value expressions
        valExprs = []
        # The indices that are used in the expression (0-based or negative)
        indices = []
        # This is set to true if any expression was using an explicit index
        hasExplicitIndex = False
        # This index is used if there was none specified in the template string
        currentIdx = 1
        while 1:
            # Search for the next substitution pattern
            m = patternExp.search(tmpl)
            # Not found, then terminate
            if m is None:
                toks.append("*")
                strToks.append(tmpl)
                break
            
            # Get the complete substitution pattern
            fullPattern = m.group()
#            print "Pattern:",fullPattern, m.groups()
            # Is it the version with the {}?
            if fullPattern.startswith("{"):
                pattern = m.group(3)
                idx = m.group(4)
                e = m.end(4)
                if e is -1:
                    e = m.end(3)
                else:
                    e += 1
                valExprPre = tmpl[m.start()+1:m.start(3)]
                valExprPost = tmpl[e:m.end()-1]
            # No {}
            else:
                pattern = m.group(1)
                idx = m.group(2)
                valExprPre = ""
                valExprPost = ""
            
#            print "-> pat:'%s'  idx:'%s'  valExprPre:'%s'  valExprPost:'%s'"%(pattern, idx, valExprPre, valExprPost)
            width = len(pattern)
            
            if idx is None or idx=="":
                idx = currentIdx
            else:
                hasExplicitIndex = True
                idx = int(idx)
            
            if idx==0:
                raise ValueError("0-index is not defined: %s"%fullPattern)
            elif idx>0:
                idx -= 1
            indices.append(idx)
            valExpr = "%sn[%s]%s"%(valExprPre, idx, valExprPost)
#            print valExpr
            valExprs.append(valExpr)
            
            s = m.start()
            e = m.end()
            strToks.append(tmpl[:s])
            toks.append("*")
            toks.append(width*"0")
            tmpl = tmpl[e:]
            currentIdx += 1
        
        # Create the sequence string from the "*", "0000" tokens. This ensures
        # that the number count is as expected.
        s = SeqString("".join(toks))
        # Now replace the "*" with their corresponding strings (which may
        # contain numbers. But these numbers are just treated as strings)
        for i,tok in enumerate(strToks):
            s.replaceStr(i,tok)
            
        return s, valExprs, indices, hasExplicitIndex


class OutputNameGenerator:
    """Generate the file names of an output sequence based on an input sequence.
    
    This class produces output sequence file names that are based on an input
    sequence. The class is meant to be used by applications that produce an
    output file sequence based on an input sequence but where the numbers in
    the output sequence may be different than the numbers in the input sequence.
    For example, the class is used by the sequence utilities (seqmv, seqcp,
    seqrm).
    
    An :class:`OutputNameGenerator` has one public attribute called :attr:`numberMergeFlag`
    which is ``True`` when the output name pattern ended in a digit but didn't
    contain any number pattern. In this case, the class will append a 4-padded
    number but because the name already ended in a digit, the combination
    of the pattern and the number results in a larger number which is
    not necessarily what the user intended. The flag can be used by an
    application to check whether it should ask the user for confirmation.
    
    Example:
    
      >>> seqs = buildSequences(["spam1_1.tif", "spam1_2.tif", "spam1_5.tif"])
      >>> 
      >>> for src,dst in OutputNameGenerator(seqs, "foo"):
      ...   print src,"->",dst
      ... 
      spam1_1.tif -> foo0001.tif
      spam1_2.tif -> foo0002.tif
      spam1_5.tif -> foo0005.tif
      >>> 
      >>> for src,dst in OutputNameGenerator(seqs, "foo@_#.tif", dstRange=Range("10-")):
      ...   print src,"->",dst
      ... 
      spam1_1.tif -> foo1_0010.tif
      spam1_2.tif -> foo1_0011.tif
      spam1_5.tif -> foo1_0012.tif
      >>> 
      >>> for src,dst in OutputNameGenerator(seqs, "foo_#[2]_{@[1]+2}.tif"):
      ...   print src,"->",dst
      ... 
      spam1_1.tif -> foo_0001_3.tif
      spam1_2.tif -> foo_0002_3.tif
      spam1_5.tif -> foo_0005_3.tif
      >>> 
      >>> # The following assumes that "targetdir" is an existing directory
      >>> for src,dst in OutputNameGenerator(seqs, "targetdir"):
      ...   print src,"->",dst
      ... 
      spam1_1.tif -> targetdir/spam1_1.tif
      spam1_2.tif -> targetdir/spam1_2.tif
      spam1_5.tif -> targetdir/spam1_5.tif
    """
    
    def __init__(self, srcSequences, dstName, srcRanges=None, dstRange=None, keepExt=True,
                 enforceDstRange=False, repeatSrc=True):
        """Constructor.
        
        srcSequences is a list of Sequence objects that contain the source
        sequence files that the output sequence is based on. The structure of
        the names (i.e. how many separate numbers are within a name) determines
        how many number patterns the output name may have.
        dstName is a string containing the name pattern for building the
        output file names. The syntax of the pattern is determined by the
        SeqTemplate class (i.e. you can use @ or # characters to define where
        the numbers are located and what their padding is. You can also
        use an index to refer to a particular number from the input sequence
        and you can use expressions within curly braces).
        In the simplest case, the name can just be a base name without any
        special characters at all. In this case, a 4-padded number is
        automatically appended which will receive the values from the
        main number sequence in the input files (or the values specified by
        the destination range).
        
        srcRanges is a list of Range objects that defines which files from the
        source sequence should be considered, everything outside the range
        is ignored. The numbers produced by the range object refers to the
        main sequence number of the input sequence (i.e. the number that varies
        fastest). If no source range is given for a particular sequence, then
        all input files are considered.
        
        dstRange may be a Range object that provides the main sequence number
        for the output names. In this case, the main number from the input
        sequence is ignored (unless referenced via an expression). If no range
        object is given, the numbers are taken from the input sequence.
        
        keepExt is a boolean that indicates whether the file name extension
        should be added automatically if it isn't already part of the output
        name pattern. Note that the extension is *always* added unless the
        output name already contains exactly the expected extension. If the
        output name contains a different extension, the old extension is still
        added. So if you want to be able to let the user rename the extension,
        you must set this flag to False.
        
        enforceDstRange is a boolean that indicates whether the number of
        generated name pairs should always match the number of files indicated
        by the (finite) destination range, even when the source files have
        already been exhausted. The default behavior is to abort the sequence
        if there are no more source files. If the destination range is infinite,
        then this flag has no effect and the sequence always ends when there
        are no more source files.
        
        repeatSrc is a flag that is only used when enforceDstRange is True
        and there are fewer input files than there are values in the destination
        range. If repeatSrc is True, the input sequence is repeated from the
        beginning again, otherwise the last name is duplicated.
        """
        if srcRanges is None:
            srcRanges = []
        for seq in srcSequences:
            if not isinstance(seq, Sequence):
                raise TypeError("The source sequences must be Sequence objects")
        if not isinstance(dstName, basestring):
            raise TypeError("The output sequence pattern must be a string")
        for sr in srcRanges:
            if sr is not None and not isinstance(sr, Range):
                raise TypeError("The source ranges must be Range objects or None")
        if dstRange is not None and not isinstance(dstRange, Range):
            raise TypeError("The destination range must be a Range object or None")
        
        # Add full range to the srcRanges list until the length is identical to
        # the number of sequences.
        fullRange = self._getFullRange(srcSequences)
        srcRanges.extend((len(srcSequences)-len(srcRanges))*[fullRange])

        if dstRange is None:
            dstRangeIter = None
            enforceDstRange = False
        else:
            # Never enforce an infinite range
            if dstRange.isInfinite():
                enforceDstRange = False
                
            dstRangeIter = iter(dstRange)

        self._srcSequences = srcSequences
        self._dstName = dstName
        self._srcRanges = srcRanges
        self._dstRange = dstRange
        self._dstRangeIter = dstRangeIter
        self._keepExt = keepExt
        self._enforceDstRange = enforceDstRange
        self._repeatSrc = repeatSrc
        self.numberMergeFlag = False
        
        # Run the output preparation just to set the numberMergeFlag.
        # The preparation is later done again when the user iterates over the names
        for srcSeq in self._srcSequences:
            self._outputNameSpec(srcSeq, dstName, dstRangeIter is not None)

    def _getFullRange(self, srcSequences):
        """Return a Range object that spans all numbers that appear in the sequences.
        
        Returns a Range object that can be used as default source range.
        The range includes all numbers that appear anywhere on the input sequences.
        srcSequences must be a list of Sequence objects.
        """
        # By default, the range starts at 0, but if any sequence contains
        # negative numbers, we have to find the smallest negative number
        # so that we can start from there.
        minNumber = 0
        for srcSeq in srcSequences:
            for rng in srcSeq.ranges():
                if len(rng)>0:
                    start = iter(rng).next()
                    if start<minNumber:
                        minNumber = start
        
        return Range("%s-"%minNumber)

    def __iter__(self):
        return self.iterNames()
        
    def iterNames(self):
        """Iterate over input/output name pairs.
        
        Yields tuples (srcName, dstName) where source name is the unmodified
        name from the input sequences and dstName is the generated output name
        (as specified by the output pattern and additional arguments that
        were passed to the constructor).
        
        This is equivalent to iterating directly over the object.
        """
    
        # Iterate over all input sequences
        for srcSeq,srcRange in zip(self._srcSequences, self._srcRanges):
            # If the destination name refers to a directory, then use the sequence
            # name of the input sequence.
            if os.path.isdir(self._dstName):
                dstName = os.path.join(self._dstName, os.path.basename(srcSeq.sequenceName()[0]))
            else:
                dstName = self._dstName
        
            # Create the src,dst pairs...
            for src,dst in self._iterNames(srcSeq, dstName, srcRange, self._dstRangeIter,
                                           self._enforceDstRange, self._repeatSrc, self._keepExt):
                yield (src,dst)

    def _iterNames(self, srcSequence, dstName, srcRange, dstRangeIter, enforceDstRange, repeatSrc, keepExt):
        """Iterate over input/output name pairs.
        
        Yields tuples (srcName, dstName) where source name is the unmodified
        name from the input sequence and dstName the generated output name
        (as specified by the output pattern and additional arguments that
        were passed to the constructor).
        """
        
        # If no source files are given, then no output files can be generated
        if len(srcSequence)==0:
            return
        
        # Prepare output name generation
        res = self._outputNameSpec(srcSequence, dstName, dstRangeIter is not None)
        dstTemplate, numIdxs, seqNumIdx = res
        
        # Check what indices are used by the expressions (the result may not be
        # accurate when negative numbers are used because the integer we pass
        # to expressionIndices() may not be the correct one, but we are only
        # really interested in the simpler case were no explicit indices have
        # been provided anyway).
        ei = dstTemplate.expressionIndices(len(numIdxs))
        # Adjust the index of the main sequence number if it is not in the
        # list of used indices. Otherwise providing a destination range would
        # be useless because it would affect an unused number.
        # This can happen when an input sequence has at least two varying numbers
        # and the output sequence has only one number pattern and a destination
        # range has been specified.
        # Example: "spam1_1", "spam1_2", "spam2_5", "spam2_6" -> "foo#" (2-)
        # The main sequence number will be the second one, but the pattern
        # in the output name would refer to the first number, so the destination
        # range would have no effect and the output would be "foo1", "foo1",
        # "foo2", "foo2". The following if sets the main sequence number to be
        # the first one and then everything is fine again.
        if len(ei)!=0 and seqNumIdx not in ei:
            seqNumIdx = max(ei)
        
        srcIter = iter(srcSequence)
        
        # Assign output names to the input names...
        while 1:
            # srcIter is only None after it was already iterated over the source
            # names and repeatSrc is set to False, so that the last name
            # should just be kept.
            if srcIter is not None:
                try:
                    srcName = srcIter.next()
                except StopIteration:
                    if enforceDstRange:
                        if repeatSrc:
                            srcIter = iter(srcSequence)
                            srcName = srcIter.next()
                        else:
                            srcIter = None
                    else:
                        break
            
            # Build the signedNums argument. If the original SeqString contains
            # negative numbers, then we keep that index so that the same negative
            # number will be produced again below. Indices are counted from the
            # end because we may cut away some numbers by removing the path.
            if srcIter is not None:
                signedNums = [-i-1 for i,x in enumerate(reversed(srcName.getNums())) if x<0]
            
            srcName = str(srcName)
            baseName = os.path.basename(srcName)
            baseName,ext = os.path.splitext(baseName)
            baseName = SeqString(baseName, signedNums=signedNums)
            # Get all the numbers that are present in the source name
            allNums = baseName.getNums()
            # Only keep the numbers that are actually used in the output name
            nums = list(map(lambda i: allNums[i], numIdxs))

            # Only queue this file when it is part of the source range
            if len(nums)==0 or (nums[seqNumIdx] in srcRange):
                # If a destination range was specified then replace the
                # main file number with the next number in the range, otherwise
                # the number from the input file is used
                if dstRangeIter is not None and len(nums)>0:
                    try:
                        nums[seqNumIdx] = dstRangeIter.next()
                    except StopIteration:
                        break
                # Create the file names
                dstName = dstTemplate.substitute(nums)
                if keepExt and os.path.splitext(dstName)[1]!=ext:
                    dstName += ext
                yield (srcName, dstName)
    
    def _outputNameSpec(self, fileSequence, dstName, newSequenceValues):
        """Return everything that is required to produce output names.
        
        newSequenceValues is a boolean indicating whether the main sequence number
        will receive new values or if the values from the input sequence are used.
        
        The return value is a 3-tuple (dstTemplate, numIdxs, seqNumIdx)
        where dstTemplate is the SeqTemplate object that has to be used to
        generate the final output name.
        numIdxs is a list of indices that refer to the number in the source name
        that will make it into the output name. For example, if the source files
        are of the form "clip@_#" and numIdxs is [1], then this means only the
        last number will be used for substitution and the final destination name
        must have one substitution pattern. seqNumIdx is the index of the number
        that is considered to be the main number (the index refers to the numIdxs
        list, it's not the index in the source name).
        
        The method also sets the attribute numberMergeFlag to True if it
        has appended a number pattern to the output name (because none was given)
        but the name ended in a digit. This means the final number will be
        different than what was specified in the input arguments. The caller may
        use this attribute to ask the user for confirmation.
        """
        
        # Get the number ranges of all numbers in the input sequence
        ranges = fileSequence.ranges()
        
        # Create the output template
        dstTemplate = SeqTemplate(dstName)
        
        # The index of the number that varies most (i.e. the index of the sequence number)
        seqNumIdx = fileSequence.sequenceNumberIndex()
    
        numValues = len(ranges)
        numVaryingValues = len(list(filter(lambda rng: len(rng)>1, ranges)))
        # If the sequence only consisted of one single file (containing a number),
        # then we still assume there is a varying value (which will be the last
        # number. seqNumIdx is the index of the last number at this point).
        # This way the input file can still be treated as a proper sequence. 
        if len(fileSequence)==1 and len(ranges)>0:
            numVaryingValues = 1
        
        numIdxs = list(range(numValues))
        
        indices = dstTemplate.expressionIndices(numValues)
        numPatterns = len(indices)
        if numPatterns>0 and (min(indices)<0 or max(indices)>=numValues):
            raise ValueError("A number pattern in the output template name refers to a non-existent source number: %s"%dstName)
    
        # Is the destination name without any pattern at all? Then append '#' if
        # there is a unique sequence number
        if numPatterns==0:
            if numVaryingValues==1 or newSequenceValues:
                # Check if the name ends in a number. Appending the sequence number
                # would create new numbers (e.g. "clip2#" -> "clip20001", "clip20002",...)
                if len(dstName)>0 and dstName[-1] in string.digits:
                    self.numberMergeFlag = True
                # Add a pattern that refers to the sequence number (+1 because the index in the pattern is 1-based)
                dstTemplate = SeqTemplate(dstName+"#[%s]"%(seqNumIdx+1))
                indices = [seqNumIdx]
#                numIdxs = [seqNumIdx]
            elif numVaryingValues!=0:
                raise ValueError('Invalid destination name: "%s". Cannot figure out how to number the destination files. There are %s varying numbers.'%(dstName, numVaryingValues))
        # Do we only have as many patterns as there are *varying* numbers
        # and no explicit index was specified?
        # Then we can assume that the user only wants to reference the varying
        # numbers and the constant numbers are just part of the name.
        elif numPatterns==numVaryingValues and not dstTemplate.hasExplicitIndex:
            if len(fileSequence)>1:
                numIdxs = []
                for i,rng in enumerate(ranges):
                    if len(rng)>1:
                        numIdxs.append(i)
            else:
                # This is used for sequences that only have one single file. We treat the last number as the varying number.
                numIdxs = [seqNumIdx]
        # Do we have too few patterns? (and the user did not specify any
        # index explicitly?)
        # If so, throw an error because it's not clear which number should be
        # mapped to which pattern.
        elif numPatterns!=numValues and not dstTemplate.hasExplicitIndex and not newSequenceValues:
            if numValues==numVaryingValues:
                expectedStr = "%s pattern"%numValues
                if numValues>1:
                    expectedStr += "s"
            else:
                expectedStr = "%s or %s patterns"%(numVaryingValues, numValues)
            if numPatterns>numValues:
                raise ValueError('Invalid destination name: "%s". There are too many substitution patterns (expected %s).'%(dstName, expectedStr))
            else:
                raise ValueError('Invalid destination name: "%s". There are not enough substitution patterns (expected %s).'%(dstName, expectedStr))
    
        # Recompute the index that refers to the sequence number (as we might have
        # removed some numbers from the list and seqNumIdx should always refer
        # to a number that is actually used in the output, so that the -d option works)
        seqNumIdx = -1
        maxVal = -1
#        for i,idx in enumerate(indices):
        for i,idx in enumerate(numIdxs):
            v = len(ranges[idx])
            if v>=maxVal:
                seqNumIdx = i
                maxVal = v
        
        return dstTemplate, numIdxs, seqNumIdx


class _SequenceProcessor:
    """Base class for move/copy/link.
    """
    
    def __init__(self, srcSequences, dstName, srcRanges=None, dstRange=None,
                 keepExt=True, enforceDstRange=False, verbose=False,
                 resolveSrcLinks=False):
        """Constructor.
        
        See the derived classes for documentation on most arguments.
        
        resolveSrcLinks: If true, the source file names will be replaced by
        their real paths.
        """
        ong = OutputNameGenerator(srcSequences,
                                  dstName,
                                  srcRanges = srcRanges,
                                  dstRange = dstRange,
                                  keepExt = keepExt,
                                  enforceDstRange = enforceDstRange)
        
        self._mergesNumbers = ong.numberMergeFlag
        self._verbose = verbose
        
        # Create the file table
        fileTab = []
        for uiSrc,uiDst in ong.iterNames():
            src = os.path.abspath(uiSrc)
            dst = os.path.abspath(uiDst)
            if resolveSrcLinks:
                src = os.path.realpath(uiSrc)
            fileTab.append((src,dst,uiSrc,uiDst))
            
        # Resolve internal collisions
        srcFiles = list(map(lambda t: t[0], fileTab))
        fileTab = self._resolveCollisions(fileTab, srcFiles)

        self._fileTab = fileTab
            
    def mergesNumbers(self):
        """Check if a trailing number on the output sequence and a file number would get merged.
        
        This method returns ``True`` when the base output sequence name ends in
        a number and a sequence number would be appended as well which results
        in a new number (for example, writing a sequence with the base name
        ``out2`` can produce output files ``out20001``, ``out20002``, ... which
        may not be what the user intended). The result of this call can be used to
        check if the application should ask the user for confirmation.
        """
        return self._mergesNumbers

    def overwrites(self):
        """Iterate over all output file names that already exist on disk.
        
        Only iterates over the files that are not part of the input sequence.
        The returned files are those that would get overwritten when the
        operation would be carried out.
        This can be used to check if the user should be asked for confirmation.
        """
        srcDict = {}
        srcFiles = map(lambda t: t[0], self._fileTab)
        for srcName in srcFiles:
            srcDict[srcName] = 1
            
        dstFiles = map(lambda t: t[1], self._fileTab)
        for dstName in dstFiles:
            if dstName not in srcDict and os.path.exists(dstName):
                yield dstName
    
    def sequences(self):
        """Iterate over the input/output sequences.
        
        Yields tuples (*srcSeq*, *dstSeq*) where each item is a :class:`Sequence`
        object. The result can be used to show an overview of what the
        operation will do.
        """
        # Print the final source and destination sequences (just for user info)
        
        # We use _buildSequences() instead of buildSequences() so that the
        # fileTab doesn't get sorted again (it is already sorted). This
        # ensures that the sequences are yielded in the same order in which
        # they will get processed.
        objects = map(lambda obj: (SeqString(obj[2]),obj), self._fileTab)
        seqs = _buildSequences(objects)
        for srcSeq in seqs:
            dstFiles = map(lambda t: t[3], srcSeq)
            dstSeq = buildSequences(dstFiles)[0]
            yield srcSeq, dstSeq

    def dryRun(self, outStream=None):
        """Print what would get done when run() was called.
        
        *outStream* is an object with a :meth:`write()` method that will
        receive the text. If ``None`` is passed, ``sys.stdout`` is used.
        """
        if outStream is None:
            outStream = sys.stdout
            
        for src,dst,uiSrc,uiDst in self._fileTab:
            if src!=dst:
                outStream.write("%s -> %s\n"%(uiSrc, uiDst))
    
    def run(self, outStream=None):
        """Do the operation.

        *outStream* is an object with a :meth:`write()` and :meth:`flush()`
        method that will receive the text (only in verbose mode). If ``None``
        is passed, ``sys.stdout`` is used.
        """
        if outStream is None:
            outStream = sys.stdout
        
        # Execute the list
        for src,dst,uiSrc,uiDst in self._fileTab:
            if src!=dst:
                if self._verbose:
                    outStream.write("%s -> %s\n"%(uiSrc, uiDst))
                    outStream.flush()
                self._fileOperation(src, dst)
                
    def _fileOperation(self, src, dst):
        """Do the file operation.
        
        This must be implemented in a derived class.
        """
        raise NotImplementedError("This method must be implemented in a derived class")
    
    def _resolveCollisions(self, fileTable, srcFiles):
        """Modify the file table, so that moving files doesn't result in collisions.
        
        Collisions are only checked among the files in the table, it is not checked
        that a move operation would overwrite a file on disk.
        Returns the new file table (the old table might have been modified!).
        
        srcFiles is the list of initial files as they exist on disk (the strings
        must match the srcName strings in fileTable).
        
        Raises an exception if collisions cannot be resolved (this can happen
        when the sequence contains file like img1.tif and img01.tif which might
        both get mapped to the same output file name).
        
        This has to be implemented in a derived class.
        """
        return fileTable


class MoveSequence(_SequenceProcessor):
    """This class moves one or more sequences of files.
    """
    
    def __init__(self, srcSequences, dstName, srcRanges=None, dstRange=None, keepExt=True, verbose=False):
        """Constructor.
        
        srcSequences is a list of Sequence objects that contain the source
        sequence files that the output sequence is based on.
        
        dstName is a string containing the name pattern for building the
        output file names. The pattern may contain @ or # characters to define
        where the numbers should appear and what their padding is.
        You can also use an index to refer to a particular number from the
        input sequence and you can use expressions within curly braces.
        In the simplest case, the name can just be a base name without any
        special characters at all. In this case, a 4-padded number is
        automatically appended which will receive the values from the
        main number sequence in the input files (or the values specified by
        the destination range).

        srcRanges is a list of Range objects that defines which files from the
        source sequence should be considered, everything outside the range
        is ignored. The numbers produced by the range object refers to the
        main sequence number of the input sequence (i.e. the number that varies
        fastest). If no source range is given for a particular sequence, then
        all input files are considered.

        dstRange may be a Range object that provides the main sequence number
        for the output names. In this case, the main number from the input
        sequence is ignored (unless referenced via an expression). If no range
        object is given, the numbers are taken from the input sequence.
        
        keepExt is a boolean that indicates whether the file name extension
        should be added automatically if it isn't already part of the output
        name pattern. Note that the extension is *always* added unless the
        output name already contains exactly the expected extension. If the
        output name contains a different extension, the old extension is still
        added. So if you want to be able to let the user rename the extension,
        you must set this flag to False.
        
        The verbose flag determines whether each file is printed during the
        actual operation.
        """
        _SequenceProcessor.__init__(self, srcSequences, dstName, srcRanges, dstRange, keepExt, enforceDstRange=False, verbose=verbose)
            
    def _fileOperation(self, src, dst):
        """Do the move operation.
        """
        shutil.move(src, dst)
    
    def _checkCollisions(self, fileTable, srcFiles):
        """Check if moving/renaming the files would lead to collisions.
        
        fileTable is a list of tuples where the first two items are the
        srcName and the dstName. There may be additional items per tuple which
        are just ignored.
        srcFiles is the list of initial files as they exist on disk (the strings
        must match the srcName strings in fileTable).
        
        Returns True when a file from the input sequence would get overwritten.
        """
        fileDict = {}
        # Initialize the file dict with the source files
        for name in srcFiles:
            fileDict[name] = 1
            
        # Simulate the rename operations and check if there is a collision
        for item in fileTable:
            srcName = item[0]
            dstName = item[1]
            del fileDict[srcName]
            if dstName in fileDict:
                return True
            fileDict[dstName] = 1
            
        return False
    
    def _resolveCollisions(self, fileTable, srcFiles):
        """Modify the file table, so that moving files doesn't result in collisions.
        
        Collisions are only checked among the files in the table, it is not checked
        that a move operation would overwrite a file on disk.
        Returns the new file table (the old table might have been modified!).
        
        srcFiles is the list of initial files as they exist on disk (the strings
        must match the srcName strings in fileTable).
        
        Raises an exception if collisions cannot be resolved (this can happen
        when the sequence contains file like img1.tif and img01.tif which might
        both get mapped to the same output file name).
        """
        # Check if renaming in the current order would result in a collision.
        if self._checkCollisions(fileTable, srcFiles):
            # Try the reverse order instead
            fileTable.reverse()
                    
            # If this still collides, then use a temporary name
            if self._checkCollisions(fileTable, srcFiles):
                fileTable.reverse()
                tab1 = []
                tab2 = []
                for item in fileTable:
                    srcName = item[0]
                    dstName = item[1]
                    uiSrcName = item[2]
                    uiDstName = item[3]
                    
                    p,n = os.path.split(dstName)
                    tmpName = os.path.join(p, "__tmp__"+n)
                    p,n = os.path.split(uiDstName)
                    uiTmpName = os.path.join(p, "__tmp__"+n)
                    
                    tab1.append((srcName,tmpName,uiSrcName,uiTmpName))
                    tab2.append((tmpName,dstName,uiTmpName,uiDstName))
                fileTable = tab1+tab2
                
                if self._checkCollisions(fileTable, srcFiles):
                    raise ValueError("Cannot resolve collisions because of inconsistent sequence numbering. A file from the input sequence would overwrite another file from the same sequence.")
    
        return fileTable


class CopySequence(_SequenceProcessor):
    """This class copies one or more sequences of files.
    """
    
    def __init__(self, srcSequences, dstName, srcRanges=None, dstRange=None,
                 keepExt=True, verbose=False, resolveSrcLinks=False):
        """Constructor.
        
        srcSequences is a list of Sequence objects that contain the source
        sequence files that the output sequence is based on.
        
        dstName is a string containing the name pattern for building the
        output file names. The pattern may contain @ or # characters to define
        where the numbers should appear and what their padding is.
        You can also use an index to refer to a particular number from the
        input sequence and you can use expressions within curly braces.
        In the simplest case, the name can just be a base name without any
        special characters at all. In this case, a 4-padded number is
        automatically appended which will receive the values from the
        main number sequence in the input files (or the values specified by
        the destination range).

        srcRanges is a list of Range objects that defines which files from the
        source sequence should be considered, everything outside the range
        is ignored. The numbers produced by the range object refers to the
        main sequence number of the input sequence (i.e. the number that varies
        fastest). If no source range is given for a particular sequence, then
        all input files are considered.

        dstRange may be a Range object that provides the main sequence number
        for the output names. In this case, the main number from the input
        sequence is ignored (unless referenced via an expression). If no range
        object is given, the numbers are taken from the input sequence.
        
        keepExt is a boolean that indicates whether the file name extension
        should be added automatically if it isn't already part of the output
        name pattern. Note that the extension is *always* added unless the
        output name already contains exactly the expected extension. If the
        output name contains a different extension, the old extension is still
        added. So if you want to be able to let the user rename the extension,
        you must set this flag to False.
        
        The verbose flag determines whether each file is printed during the
        actual operation.
        
        resolveSrcLinks determines whether source links are resolved before
        processing the sequence.
        """
        _SequenceProcessor.__init__(self, srcSequences, dstName, srcRanges, dstRange,
                                    keepExt, enforceDstRange=True, verbose=verbose,
                                    resolveSrcLinks=resolveSrcLinks)
            
    def _fileOperation(self, src, dst):
        """Do the copy operation.
        """
        shutil.copy(src, dst)
    
    def _checkCollisions(self, fileTable, srcFiles):
        """Check if copying the files would lead to collisions.
        
        fileTable is a list of tuples where the first two items are the
        srcName and the dstName. There may be additional items per tuple which
        are just ignored.
        srcFiles is the list of initial files as they exist on disk (the strings
        must match the srcName strings in fileTable).
        """
        fileDict = {}
        # Initialise the file dict with the source files
        for name in srcFiles:
            fileDict[name] = 1
            
        # Simulate the copy operations and check if there is a collision
        for item in fileTable:
            srcName = item[0]
            dstName = item[1]
            # Check if the original source file has already been overwritten
            if srcName not in fileDict:
                return True
            if dstName in fileDict:
                del fileDict[dstName]
            
        return False
    
    def _resolveCollisions(self, fileTable, srcFiles):
        """Modify the file table, so that moving files doesn't result in collisions.
        
        Collisions are only checked among the files in the table, it is not checked
        that a move operation would overwrite a file on disk.
        Returns the new file table (the old table might have been modified!).
        
        srcFiles is the list of initial files as they exist on disk (the strings
        must match the srcName strings in fileTable).
        
        Raises an exception if collisions cannot be resolved (this can happen
        when the sequence contains file like img1.tif and img01.tif which might
        both get mapped to the same output file name).
        """
        # Check if renaming in the current order would result in a collision.
        if self._checkCollisions(fileTable, srcFiles):
            # Try the reverse order instead
            fileTable.reverse()
                    
            # If this still collides, then use a temporary name
            if self._checkCollisions(fileTable, srcFiles):
                fileTable.reverse()
                raise ValueError("Cannot resolve collisions because of inconsistent sequence numbering. A file from the input sequence would overwrite another file from the same sequence.")
    
        return fileTable


class SymLinkSequence(CopySequence):
    """This class creates symbolic links between sequences.
    """
    def _fileOperation(self, src, dst):
        """Do the copy operation.
        """
        os.symlink(src, dst)


def buildSequences(names, numPos=None, assumeFiles=False, nameFunc=None, signedNums=None):
    """Create sorted sequences from a list of names/objects.
    
    *names* is a list of objects (usually strings) that are grouped into sequences.
    If *assumeFiles* is ``True``, the input strings are assumed to be file
    names. In this case, it will be ensured that files from different
    directories are put into different sequences and any number occurring
    in the directory part is "frozen" (turned into a string).
    
    *numPos* can be set to a number index which defines the position of the
    numbers that are allowed to vary per sequence. If not given, all numbers
    may vary (for example, if you want the files ``clip1_#.tif`` to be a different
    sequence than ``clip2_#.tif`` you have to set numPos to 1 or -1).
    
    *nameFunc* can be a callable that gets called for every item in *names*.
    The function has to return the actual name of that object. This can
    be used if the input list contains objects that are not strings but
    some other (compound) objects.

    *signedNum* is either a boolean that can be used to turn all numbers
    into signed numbers or it may be a list containing the indices of
    the numbers that should be treated as signed numbers. An index may
    also be negative to count from the end. By default, all numbers
    are unsigned.

    Returns a list of :class:`Sequence<cgkit.sequence.Sequence>` objects.
    The sequences and the files within the sequences are sorted.
    """
    # Create the objects list which contains 2-tuples (seqString,obj).
    # obj is the original object from the "names" list or None.
    if nameFunc is None:
        objects = map(lambda name: (SeqString(name,signedNums=signedNums),None), names)
    else:
        objects = map(lambda obj: (SeqString(nameFunc(obj),signedNums=signedNums),obj), names)
    # Sort the objects according to their seqString
    # The order of the result is already so that members of the same
    # sequence are together, we just don't know yet where a sequence ends
    # and the next one begins.
    objects = sorted(objects, key=lambda tup: tup[0])
    
    return _buildSequences(objects, numPos, assumeFiles)
    
def _buildSequences(objects, numPos=None, assumeFiles=False):
    """Helper function for buildSequences().
    
    objects is a sorted list of (name,obj) tuples.
    """
    res = []
    
    # Build sequences...
    currentSeq = Sequence()
    currentPath = None
    for name,obj in objects:
        # Are we dealing with file names? Then freeze directory numbers...
        if assumeFiles:
            path,n = os.path.split(str(name))
            # The signedNums flag is irrevelant for freezing numbers
            pathseq = SeqString(path)
            # n: The number count in the path (these numbers have to be frozen)
            n = pathseq.numCount()
            for dummy in range(n):
                name.replaceNum(0, name.getNumStr(0))
            
        sequenceSplit = False
        
        # Check if the current name has a different structure or different
        # text parts as the names in the current sequence. If so, we
        # have to begin a new sequence            
        if not currentSeq.match(name, numPos):
            sequenceSplit = True
            
        # If we are dealing with file names, then make sure files in
        # different directories are put into separate sequences (even
        # when the names have the same structure).
        if assumeFiles:
            # path has been set above where the directory numbers were frozen
            if currentPath is not None and path!=currentPath:
                sequenceSplit = True
                currentPath = path
                                    
        # Do we have to begin a new sequence?
        if sequenceSplit:
            res.append(currentSeq)
            currentSeq = Sequence()
            
        # Add the current name to the current sequence
        currentSeq.append(name, obj)

    # Also store the last sequence generated (if it isn't empty)
    if len(currentSeq)>0:
        res.append(currentSeq)
        
    return res


def compactRange(values):
    """Build the range string that lists all values in the given list in a compacted form.
    
    *values* is a list of integers (may contain duplicate values and does not have
    to be sorted). The return value is a string that lists all values (sorted)
    in a compacted form.
    The returned range string can be passed into a :class:`Range` object to create
    the expanded integer sequence again.
    
    Examples:
    
      >>> compactRange([1,2,3,4,5,6])
      '1-6'
      >>> compactRange([2,4,6,8])
      '2-8x2'
      >>> compactRange([1,2,3,12,11,10])
      '1-3,10-12'
    """
    if len(values)==0:
        return ""
    
    values.sort()
    
    # Set the initial value of the range list. The list contains
    # lists [start,end,step].
    v = values[0]
    rangeList = [[v,v,None]]
    
    # Build the range list
    for v in values[1:]:
        r = rangeList[-1]
        begin,end,step = r
        if v!=end:
            if begin==end:
                step = v-begin
                r[2] = step
            if end+step==v:
                r[1] = v
            else:
                rangeList.append([v,v,None])
                
    # Go through all individual ranges and check if ranges that only contain
    # two values can be changed so that the end value is put into the
    # subsequent range (e.g. 1-100x99,101 -> 1,100-101)
    for i in range(len(rangeList)-1):
        begin,end,step = rangeList[i]
        # Is this a range containing 2 values? Then check if it's advantageous
        # second value can be moved into the subsequent range
        if begin!=end and (end-begin)//step==1:
            begin2,end2,step2 = rangeList[i+1]
            # The second range only contains 1 value? Then only move
            # when the new step is smaller than the old step in the first range
            if begin2==end2:
                step2 = begin2-end
                if step2<step:
                    begin2 = end
                    rangeList[i+1][0] = begin2
                    rangeList[i+1][2] = step2
                    rangeList[i][1] = begin
            # The second range contains several values, so check if actually
            # can add the end value from the previous range
            else:
                if begin2-step2==end:
                    begin2 = end
                    rangeList[i+1][0] = begin2
                    rangeList[i][1] = begin
                   
    # Collapse the range list into strings (such as "1-99,110,200-220x2", etc)
    rs = []
    for r in rangeList:
        begin,end,step = r
        if begin==end:
            rs.append(str(begin))
        else:
            # Step is 1? Then leave it out
            if step==1:
                rs.append("%s %s"%(begin,end))
            # This sub-range only consists of two values (and step is not 1)? Then list individually
            elif (end-begin)//step==1:
                rs.append("%s,%s"%(begin,end))
            # Full sub-range, including step
            else:
                rs.append("%s %s %s"%(begin,end,step))
                
    return ",".join(rs)

def glob(name, signedNums=None):
    """Create file sequences from a name pattern.
    
    *name* is a file pattern that will get a ``'*'`` appended. The pattern is then
    passed to the regular :func:`glob()` function from the standard :mod:`glob`
    module to obtain a list of files which are then grouped into sequences.

    *signedNum* is either a boolean that can be used to turn all numbers
    into signed numbers or it may be a list containing the indices of
    the numbers that should be treated as signed numbers. An index may
    also be negative to count from the end. By default, all numbers
    are unsigned.

    Returns a list of :class:`Sequence<cgkit.sequence.Sequence>` objects.
    The sequences and the files within the sequences are sorted.
    """
    hasSep = name.endswith(os.path.sep)
    name = os.path.normpath(name)
    if hasSep:
        name += os.path.sep
    globpattern = name
    if not globpattern.endswith("*"):
        globpattern += "*"
    
    # Keep the pattern for calling fnmatch later
    fnpattern = globpattern
    
    # Replace number substitution pattern by wildcards (this might result
    # in files being reported that are actually not valid because they either
    # contain strings instead of numbers or the padding is not as specified.
    # But those invalid files will be filtered out later using the SeqString's
    # fnmatch method)
    globpattern = globpattern.replace("#", "????")
    while 1:
        m = re.search(r"@+", globpattern)
        if m is None:
            break
        globpattern = "%s%s%s"%(globpattern[:m.start()], "?*", globpattern[m.end():])
        
    # Get a list of potential file names    
    fileNames = _glob.glob(globpattern)
    
    # Remove all directories
    fileNames = filter(lambda n: not os.path.isdir(n), fileNames)
    
    # Remove files that don't have any number in their name (without ext)
    fileNames = filter(lambda n: SeqString(os.path.splitext(n)[0]).numCount()>0, fileNames)

    # Convert the names to SeqString objects (actually tuples that can be passed to _buildSequences())
    objects = [(SeqString(name,signedNums=signedNums),None) for name in fileNames]
    
    # Remove files that don't match the input pattern
    objects = [tup for tup in objects if tup[0].fnmatch(fnpattern)]

    # Sort the file names
    objects = sorted(objects, key=lambda tup: tup[0])
    
    return _buildSequences(objects, assumeFiles=True)

