#!/usr/bin/env python

import Rat

# 29.97 is apparently only an approximation
DEFAULT_FRAME_RATE = Rat.rat(30 * 1000, 1001)

def time_to_frame(fnum, rate=DEFAULT_FRAME_RATE):
    return int(fnum * rate)



