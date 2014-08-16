#!/usr/bin/env python
import math
#import fractions
import Rat
import itertools

def old_convert_integers_by_ratio(ratio, num_inputs, src_offset=0, dest_offset=0):
    """Given an out:in ratio and a number of inputs, give the reassignments
    that will result in the correct number of output frames taken linearly from
    input frames.

    You can also specify a src_offset or dest_offset, which are added to the
    source or dest numbers.

    >>> list(convert_integers_by_ratio(0.5, 4))
    [(1, 0), (3, 1)]
    >>>
    """
    max_taken = -1
    for in_frame in xrange(0, num_inputs):
        out_frame = int(math.floor((in_frame + 1) * ratio)) - 1
        if out_frame > max_taken:
            for copy in xrange(max_taken + 1, out_frame + 1):
                yield (in_frame + src_offset, copy + dest_offset)
            max_taken = out_frame

def convert_integers_by_ratio(ratio, num_inputs, src_offset=0, dest_offset=0):
    return convert_integers_by_iterator_ratio(ratio,
            xrange(src_offset, src_offset + num_inputs),
            dest_offset=dest_offset)

def argh(ratio, source, dest_offset=0):
    """Given a source of frame numbers and a ratio, gives the reassignments
    that will result in the best assignment of input to output frames."""

    if len(source) == 0:
        raise StopIteration()

    first_frame = source[0]

    for in_frame in source:
        rel_in_frame = in_frame - first_frame

        first_rel_out_frame = int(math.floor(rel_in_frame * ratio))
        bound_rel_out_frame = int(math.floor((rel_in_frame + 1) * ratio))

        # Confusing, argh:
        # Uncomment this to let the program use e.g. even-numbered frames when 
        # the ratio is 1/2.  Unfortunately, this breaks everything else!  See 
        # testSkipRatioBad in test_rateconverter.py.  You'll also need to use
        # take_last_assignment down in convert_integers_by_iterator_ratio.
        #bound_rel_out_frame = max(
                #int(math.floor((rel_in_frame + 1) * ratio)),
                #first_rel_out_frame + 1)

        for rel_out_frame in xrange(first_rel_out_frame, bound_rel_out_frame):
            yield (in_frame, rel_out_frame + dest_offset)

def convert_integers_by_iterator_ratio(ratio, source, dest_offset=0):
    #return take_last_assignment(argh(ratio, source, dest_offset))
    return argh(ratio, source, dest_offset)

def take_last_assignment(source):
    first = True
    last = None
    for assn in source:
        if first:
            last = assn
            first = False
        if assn[1] != last[1]:
            yield last
        last = assn
    if last is not None:
        yield last

        


def expected_number(ratio, num_inputs):
    return math.floor(ratio * num_inputs)

def ratio_for_number(num_inputs, num_outputs):
    return Rat.rat(num_outputs, num_inputs)

def frames_in_range(bounds):
    return bounds[1] + 1 - bounds[0]

def convert_range_to_range(in_bounds, out_bounds):
    num_outs = frames_in_range(out_bounds)
    num_ins = frames_in_range(in_bounds)
    ratio = ratio_for_number(num_ins, num_outs)
    return convert_integers_by_ratio(ratio, num_ins,
            src_offset=in_bounds[0],
            dest_offset=out_bounds[0])

