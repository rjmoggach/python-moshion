#!/usr/bin/env python
import shutil
from framesource import VideoFrameSource
import tempfile
import decimal
import rateconverter 
import os

"""
extractframes package - extract frames from a video.

The top level module contains only one function, extract() which is the main
way you'd accomplish frame extractions.
"""

# maybe refactor this part so that the file movement is also testable
# separately from the extraction?

def extract(infile, outfile, ratio=None, in_frames=None, quiet=True, 
        out_count=None, out_offset=0):
    outdir = os.path.dirname(outfile)
    if len(outdir) == 0:
        outdir = '.'
    if not os.path.isdir(outdir):
        raise IOError('Destination directory %s does not exist!' % os.path.dirname(outfile))

    if ratio is not None and out_count is not None:
        raise ValueError('You can only specify one of ratio and out_count')
    elif ratio is None and out_count is None:
        ratio = 1

    frame_source = VideoFrameSource(infile, quiet=quiet)

    if not in_frames:
        # xrange is half-open interval.  For closed interval, would be
        # [0, get_num_frames() - 1]
        in_frames = xrange(0, frame_source.get_num_frames())

    if in_frames[0] < 0 or in_frames[-1] > frame_source.get_num_frames() - 1:
        raise ValueError("Requested bounds %s don't fit in %d-frame video file"
                % (in_frames, frame_source.get_num_frames()))

    in_count = in_frames[-1] - in_frames[0] + 1

    if out_count is not None:
        ratio = rateconverter.ratio_for_number(in_count, out_count)

    iterator = rateconverter.convert_integers_by_iterator_ratio(ratio, in_frames,
            dest_offset=out_offset)
    if not quiet:
        try:
            import progressbar
            pbar = progressbar.ProgressBar(widgets=['Copying frames to destination',
                progressbar.Bar(), progressbar.ETA()])
            test = pbar([1])
            iterator = pbar(list(iterator))
        except (ImportError, TypeError):
            print "(For a progress bar, install python-progressbar v. 2.3)"
    for src, dst in iterator:
        source = frame_source.get_frame_file(src)
        dest = outfile % dst

        shutil.copy(source, dest)



