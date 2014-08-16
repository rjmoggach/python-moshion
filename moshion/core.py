"""
 python-moshion - Datamoshing Motion
 (c) 2014 Robert Moggach, Fabio Piparo and contributors
 Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php

 core.py
  
 moshion is a command line interface to ffmpeg used to datamosh two
 video sequences to purposely create encoding artifacts.

"""


import sys
import os
import glob
import copy
import subprocess

from .pymosh import Index
from .pymosh.mpeg4 import is_iframe
#from .extractframes.timespec import time_to_frame
#from .extractframes.multirange import multirange
from .util import IS_TTY, HR, hilite
import sequence
import readline

#    pattern=os.path.abspath(pattern)
#    fseqs = sequence.glob(pattern)


class Moshion():
 
  def __init__(self, inseq, moshseq, start, end, outdir, moshstart=None, bitrate="8000", keyframe="999", threshold="100000000", interval="9", avionly=False, uber=False):
    self.uber = uber
    self.inseq = os.path.normpath(inseq.replace('\\', os.sep))
    self.filebase = self.inseq.split('.')[0].split(os.sep)[-1]
    self.fileext = self.inseq.split('.')[-1]
    self.moshseq = os.path.normpath(moshseq.replace('\\', os.sep))
    self.start = int(start)
    self.end = int(end)
    self.avionly=avionly
    if moshstart is None:
      self.moshstart = int(self.start)
    else:
      self.moshstart = int(moshstart)
    self.input_frame_list = list(range(int(self.start), int(self.end)+1))
    self.mosh_frame_list = list(range(int(self.moshstart), int(self.moshstart)+len(self.input_frame_list)+1))
    self.bitrate = bitrate
    self.keyframe = keyframe
    self.threshold = threshold
    self.interval = interval
    self.outdir = os.path.normpath(outdir.replace('\\', os.sep))
    self.to_mosh = []
    self.moshed = []
    if not os.path.isdir(self.outdir):
      os.makedirs(self.outdir, 0755)
    self.outfiledir = os.path.join(self.outdir, self.fileext)
    if not os.path.isdir(self.outfiledir) and not self.avionly: os.makedirs(self.outfiledir, 0755)
    outfilename = "{2}{0}{1}_moshed.%04d.{2}".format( os.sep, self.filebase, self.fileext  )
    self.outseq = os.path.join(self.outdir, outfilename)
#    self.moshed = os.path.join(self.outdir, "mosh_encode.avi")
    self.file_list_dict = self.get_file_list_dict()
    self.write_file_list()

  def get_file_list_dict(self):
    files = {}
    if not self.uber:
      file_list_name = 'frame_list.txt'
      file_list = ['ffconcat version 1.0']
      for frame in self.input_frame_list:
        file_list.append("file %s" % self.inseq % frame)
      for frame in self.mosh_frame_list:
        file_list.append("file %s" % self.moshseq % frame)
      files[file_list_name] = file_list
    else:
      file_list_name = 'frame_list.%04d.txt'
      uber_frame_list = list(self.input_frame_list)
      while uber_frame_list:
        file_list = ['ffconcat version 1.0']
        for frame in uber_frame_list:
          file_list.append("file %s" % self.inseq % frame)
        for frame in self.mosh_frame_list:
          file_list.append("file %s" % self.moshseq % frame)
        files[file_list_name % uber_frame_list.pop()] = file_list
    return files

  def write_file_list(self):
    for ffile, flist in self.file_list_dict.iteritems():
      file_path = os.path.join(self.outdir, ffile)
      out_file = file(file_path, 'w')
      out_file.write('\n'.join(flist))
      out_file.close()

  def get_encode_opts(self, list_file, avi):
    opts = ['ffmpeg']
    opts.extend(['-safe', '0'])
    opts.extend(['-i'])
    opts.extend([list_file])
    opts.extend(['-nostdin'])
    opts.extend(['-hide_banner'])
    opts.extend(['-pattern_type', 'sequence'])
    opts.extend(['-g', self.keyframe])
    opts.extend(['-sc_threshold', self.threshold])
    opts.extend(['-an'])
    opts.extend(['-vf', 'fps=25'])
    opts.extend(['-vcodec', 'libxvid'])
    opts.extend(['-f', 'avi'])
    opts.extend(['-y'])
    opts.extend([avi])
    return opts

  def write_movie(self):
    self.to_mosh=[]
    if not self.uber:
      msg = '\n\nCreating initial movie\n\n'
      if IS_TTY: print hilite(msg,7)
      for key, value in self.file_list_dict.iteritems():
        list_file = os.path.join(self.outdir, key)
        avi_filename = "{0}.avi".format(self.filebase)
        self.to_mosh.append(avi_filename)
        avi = os.path.join(self.outdir, avi_filename)
        #, shell=False, stdin=PIPE, stdout=PIPE, stderr=PIPE
        return subprocess.call(self.get_encode_opts(list_file, avi), close_fds=True)
    else:
      msg = '\n\nCreating initial movies\n\n'
      if IS_TTY: print hilite(msg,7)
      print hilite(self.input_frame_list,30)
      file_list_name = 'frame_list.%04d.txt'
      for frame in self.input_frame_list:
        list_file = os.path.join(self.outdir, file_list_name % frame)
        avi_filename = "{0}_fr{1}.avi".format(self.filebase, '%04d'%frame)
        self.to_mosh.append(avi_filename)
        avi = os.path.join(self.outdir, avi_filename)
        #, shell=False, stdin=PIPE, stdout=PIPE, stderr=PIPE
        subprocess.call(self.get_encode_opts(list_file, avi), close_fds=True)
        
  def mosh(self):
    if self.to_mosh is None:
      return False
    else:
      for avi_filename in self.to_mosh:
        moshed_avi_filename = avi_filename.replace('.avi','_moshed.avi')
        msg = '{0}Creating moshed movie:\n{1}{0}'.format(HR, moshed_avi_filename)
        if IS_TTY: print hilite(msg,15)
        input_avi = os.path.join(self.outdir, avi_filename)
        moshed_avi = os.path.join(self.outdir, moshed_avi_filename) 
        # by johannesgj
        # https://github.com/grampajoe/pymosh/blob/master/examples/moshmotion.py
        # loads in the index of frames in the given avi file
        f = Index(input_avi)
        # So I can assign to the closed-over buffer
        buf = [None]
      
        def process_frame(frame):
          """Process a frame, holding onto one P-frame at a time,
          which is used to replace any I-frames encountered."""
          # if there is no frame in buf or the frame is not i-frame
          if buf[0] == None or not is_iframe(frame):
            # then buf is the seen p-frame
            buf[0] = frame
          else:
            # if it IS an iframe then use the buf'ers pframe
            frame = buf[0]
          # return the frame
          return frame
      
        # we use the list of frames in the loaded file
        for stream in f.video:
          # make a new list to put in frames YOU decide
          newstream = []
          # append it with a i-frame to make it load fine in video player
          newstream.append(stream[0])
          # two variables for counting frames and interval
          ix = 0
          jx = 0
          # stream is reduced by one since we have allready added one frame above
          for i in stream[1:]:
            ix += 1
            jx += 1
            # if ix the counter of interval is < interval select normal frames
            if ix < self.interval:
              newstream.append(process_frame(stream[jx]))
            # else bleed the reached frame for interval time
            else:
              newstream.append(newstream[-1])
            # init interval
            if ix > self.interval * 2:
              ix = 0
          # replace original stream with same length newstream
          stream.replace(newstream)
      
        # Call rebuild to recombine the modified streams and perform any other
        # maintenance the file format needs for clean output.
        f.rebuild()
      
        # Finally, write the modified file .
        f.write(moshed_avi)
        self.moshed.append(moshed_avi_filename)

  def get_export_opts(self, seekto_str, fcount, moshed_avi):
    framerate = 25.0 # irrelevant - just needs to be constant
#    endframe = float(self.end+1)
#    exportsecs = endframe/framerate
#    fftime = "%05.2f" % exportsecs
    opts = ['ffmpeg']
    opts.extend(['-nostdin'])
    opts.extend(['-hide_banner'])
    opts.extend(['-i', moshed_avi])
    opts.extend(['-ss', seekto_str])
    opts.extend(['-frames:v',str(fcount)])
    opts.extend(['-vf', 'fps=25'])
#    opts.extend(['-ss', '00:00:%s' % fftime])
    opts.extend(['-f', 'image2'])
    opts.extend([self.outseq])
    print " ".join(opts)
    return opts

  def write_sequence(self):
    framerate = 25.0 # irrelevant - just needs to be constant
    seekto_frame = float(len(self.input_frame_list)+1.0)
    seekto_secs = seekto_frame/framerate
    seekto_str = "%05.2f" % seekto_secs
    if not self.uber:
      fcount = len(self.input_frame_list)
      for key, fname in enumerate(self.moshed):
        msg = '{0}Exporting {2} frame image sequence from {3}: {1}{0}'.format(HR, self.outseq, fcount, fname)
        if IS_TTY: print hilite(msg,11)
        avi = os.path.join(self.outdir, fname)
        subprocess.call(self.get_export_opts(seekto_str, fcount, avi), close_fds=True)
    else:
      uber_frame_list = list(self.moshed)
      while uber_frame_list:
        fcount = len(uber_frame_list)
        fname = uber_frame_list.pop(0)
        avi = os.path.join(self.outdir, fname)
        msg = '{0}Exporting {2} frame image sequence from {3}: {1}{0}'.format(HR, self.outseq, fcount, fname)
        if IS_TTY: print hilite(msg,11)
        subprocess.call(self.get_export_opts(seekto_str, fcount, avi), close_fds=True)

  def do_full_mosh(self):
    self.write_movie()
    self.mosh()
    self.write_sequence()

