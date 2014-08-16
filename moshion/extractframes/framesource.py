#!/usr/bin/env python
from __future__ import with_statement
import shutil
import subprocess
import extractframes
import tempfile
import atexit
import re
import os

class VideoFrameSource(object):
    def __init__(self, vid_file, index_from=0, permanent=False, quiet=True):
        self.source_video = vid_file
        self.index_from = index_from
        self.permanent = permanent
        self.quiet = quiet
        self._extract_frames()

    def _extract_frames(self):
        self.temp_path = tempfile.mkdtemp()

        def delete_temp():
            shutil.rmtree(self.temp_path)
        if not self.permanent:
            atexit.register(delete_temp)

        tmp_fmt = os.path.join(self.temp_path, '%010d.jpg')
        do_extraction(self.source_video, tmp_fmt, quiet=self.quiet)
        # returned sorted
        self.frame_name_list = sorted(os.listdir(self.temp_path))

    def get_frame_file(self, frame_num):
        """Gets the frame referred to by the frame number supplied.

        This function is tricksy!  If you call obj.get_frame_file(N), you'll
        get a file with a name that looks like it's N+1.  This is intentional!
        FFmpeg extracts starting with 1, but VirtualDub starts with 0.  This is
        for compatibility with VirtualDub.
        """
        if frame_num < len(self.frame_name_list):
            return os.path.join(self.temp_path, self.frame_name_list[frame_num])
        else:
            return None

    def get_num_frames(self):
        return len(self.frame_name_list)





if os.name == 'nt':
    devnull_fname = 'nul'
else:
    devnull_fname = '/dev/null'




def do_extraction(infile, outfile, quiet=True):
    source_spec = ['-i', infile]
    dest_spec = [outfile]
    other_args = ['-qmax', '1']
    kwargs = {}

    # be quiet, ffmpeg!!
    with open(devnull_fname, 'w') as devnull:
        if quiet:
            kwargs['stderr'] = devnull

        ffmpeg = subprocess.Popen(['ffmpeg'] + source_spec + other_args + dest_spec, **kwargs)
        ret = ffmpeg.wait()
        if ret != 0:
            raise IOError('Ffmpeg returned code %d' % ret)


