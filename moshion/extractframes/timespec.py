#!/usr/bin/env python3

import fractions

# 29.97 is apparently only an approximation
DEFAULT_FRAME_RATE = fractions.Fraction(30 * 1000, 1001)

def time_to_frame(fnum, rate=DEFAULT_FRAME_RATE):
    return int(fnum * rate)



