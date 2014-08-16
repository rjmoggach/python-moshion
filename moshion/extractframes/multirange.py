#!/usr/bin/env python
import itertools

class multirange(object):
    def __init__(self, range_str, parser=int):
        """Take string like '1-10,12-40', and return the indicated integers"""

        self.range_str = range_str
        
        sections = range_str.split(',')
        self.ranges = []
        self.expanded = None
        last_end = float('-inf')
        for section in sections:
            parts = [parser(x) for x in section.split('-')]

            if parts[0] <= last_end:
                raise ValueError('Ranges must not overlap')
            if len(parts) != 2:
                raise ValueError('Ranges must have exactly two parts, "start-end"')

            last_end = parts[1]

            self.ranges.append(xrange(parts[0], parts[1] + 1))


    def __iter__(self):
        return itertools.chain(*self.ranges)

    def _ensure_expanded(self):
        if self.expanded == None:
            self.expanded = list(iter(self))

    def __getitem__(self, idx):
        self._ensure_expanded()
        return self.expanded[idx]

    def __len__(self):
        self._ensure_expanded()
        return len(self.expanded)

    def __str__(self):
        return self.range_str

    def __repr__(self):
        return "multirange(%s)" % str(self)




