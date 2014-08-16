#!/usr/bin/env python
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

import optparse 
import sys, os, glob
import os.path
import time
import sequence

class SequenceInfo:
  """Obtains and stores info about a file sequence.
  """
  def __init__(self, seq):
    """Constructor.
    
    seq is a Sequence object that contains the file names.
    """
    # Get all the info...
    size = 0
    minMTime = None
    maxMTime = None
    for fileName in seq:
      try:
        fileInfo = os.stat(str(fileName))
      except OSError:
        print >>sys.stderr, sys.exc_info()[1]
        continue
      size += fileInfo.st_size
      if minMTime is None or fileInfo.st_mtime<minMTime:
        minMTime = fileInfo.st_mtime
      if maxMTime is None or fileInfo.st_mtime>maxMTime:
        maxMTime = fileInfo.st_mtime

    self.size = size
    self.minMTime = minMTime
    self.maxMTime = maxMTime
    
  def sizeStr(self):
    """Return the sequence size as a human-readable string.
    """
    size = self.size
    if size<1024:
      return "%dB"%size
    elif size<1024*1024:
      return "%dK"%(size/1024)
    else:
    #elif size<1024*1024*1024:
      return "%dM"%(size/(1024*1024))
#    else:
#      return "%dG"%(size/(1024*1024*1024))

  def minMTimeStr(self):
    """Return the mtime of the oldest file in the sequence.
    """
    if self.minMTime is None:
      return "?"
    else:
      t = time.localtime(self.minMTime)
      return time.strftime("%d %b %H:%M", t)

  def maxMTimeStr(self):
    """Return the mtime of the newest file in the sequence.
    """
    if self.maxMTime is None:
      return "?"
    else:
      t = time.localtime(self.maxMTime)
      return time.strftime("%d %b %H:%M", t)
    
  def timeSpanStr(self):
    """Return the time difference between the oldest and newest file in the sequence.
    """
    if self.minMTime is None or self.maxMTime is None:
      return "0"
    else:
      dt = int(self.maxMTime-self.minMTime)
      d = int(dt/(60*60*24))
      dt -= d*60*60*24
      h = int(dt/(60*60))
      dt -= h*60*60
      m = int(dt/60)
      dt -= m*60
      s = dt
      if d>30:
        return ">1 month"
      if d>0:
        return "%dd %dh"%(d,h)
      elif h>0:
        return "%dh %dmin"%(h,m)
      elif m>0:
        return "%dmin %ds"%(m,s)
      else:
        return "%ss"%(s)


def main():
  parser = optparse.OptionParser(usage="%prog [options] paths")
  parser.add_option("-l", "--long", action="store_true", default=False, help="Print additional information per sequence")
  parser.add_option("-d", "--directories", action="store_true", default=False, help="List directories")
  parser.add_option("-V", "--version", action="store_true", default=False, help="Display version information")
  opts,args = parser.parse_args()

  if len(args)==0:
    args = ["*"]

  args.sort()

  # List directories first
  if opts.directories:
    for pattern in args:
      for name in glob.glob("%s*"%pattern):
        if os.path.isdir(name):
          if opts.long:
            print ("%53s/"%name)
          else:
            print ("%s/"%name)
  
  # List sequences
  for pattern in args:
    pattern=os.path.abspath(pattern)
    fseqs = sequence.glob(pattern)
    for fseq in fseqs:
      if opts.long:
        info = SequenceInfo(fseq)
        print ("%8s  %12s - %12s %-12s %s [%d files]"%(info.sizeStr(),
                            info.minMTimeStr(),
                            info.maxMTimeStr(),
                            "(%s)"%info.timeSpanStr(),
                            fseq,
                            len(fseq)))
      else:
        print (fseq)
  
##########################################################################
  
main()

