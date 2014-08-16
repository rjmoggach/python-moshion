#!/usr/bin/env python

"""
 python-moshion - Datamoshing Motion
 (c) 2014 Robert Moggach, Fabio Piparo and contributors
 Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php

 gomoshion.py
  
 moshion is a command line interface to ffmpeg used to datamosh two
 video sequences to purposely create encoding artifacts.

"""

import os
import sys
from optparse import OptionParser
from moshion.core import Moshion
from moshion import sequence
from moshion.util import IS_TTY, HR, hilite


def interactive():
  opts={}
  # INPUT SEQUENCE
  print hilite("\nEnter the input sequence path:",6)
  print "\nEg. /my/great/sequence.%04d.jpg\n"
  inseq_input = raw_input(hilite("input_path >  ",16))
  inseqs=sequence.glob(inseq_input.split('.')[0])
  if len(inseqs) > 1:
    print hilite("\nPick a sequence:",6)
    for k,v in enumerate(inseqs):
      print "\t {0}) {1}".format(k+1, v)
    inseq_input = raw_input(hilite("input_seq (1) > ",16)) or 1
    inseq = inseqs[int(inseq_input)-1] 
  else:
    inseq = inseqs[0]
  inseq_path = inseq.__str__().split(' ')[0]
  inseq_start = inseq.__str__().split(' ')[1]
  inseq_end = inseq.__str__().split(' ')[2]
  print hilite("\nEnter first frame of input sequence:",6)
  print "\nEg. 953\n"
  start=raw_input(hilite("first_fr ({0}) >  ".format(inseq_start),16)) or inseq_start
  print hilite("\nEnter last frame of input sequence:",6)
  print "\nEg. 1002\n"
  end=raw_input(hilite("last_fr ({0}) >  ".format(inseq_end),16)) or inseq_end
  # MOSH SEQUENCE
  print hilite("\nEnter the moshtex sequence path:",6)
  print "\nEg. /my/great/moshtex.%04d.jpg\n"
  moshseq_input = raw_input(hilite("moshtex_path >  ", 16))
  moshseqs=sequence.glob(moshseq_input.split('.')[0])
  if len(moshseqs) > 1:
    print "Pick a sequence:"
    for k,v in enumerate(moshseqs):
      print " {0}) {1}".format(k+1, v)
    moshseq_input = raw_input(hilite("moshtex_path > ",16)) or 1
    moshseq = moshseqs[int(moshseq_input)-1] 
  else:
    moshseq = moshseqs[0]
  moshseq_path = moshseq.__str__().split(' ')[0]
  moshseq_start = moshseq.__str__().split(' ')[1]
  moshseq_end = moshseq.__str__().split(' ')[2]
  print hilite("\nEnter the first frame of moshtex sequence:",6)
  print "\nEg. 5\n"
  moshfirst=raw_input(hilite("moshtex_first_fr ({0}) >  ".format(moshseq_start),16)) or moshseq_start
  # OUTPUT
  print hilite("\nEnter the output directory path:",6)
  print "\nEg. /my/great/output\n"
  outdir = raw_input(hilite("output_path >  ",16))

  bitrate = raw_input(hilite("Bitrate (8000) > ",16)) or "8000"
  keyframe = raw_input(hilite("Keyframe (999) > ",16)) or "999"
  threshold = raw_input(hilite("Threshold (100000000) > ",16)) or "100000000" 
  interval = raw_input(hilite("Interval (9) > ",16)) or "9" 
  uber = raw_input(hilite("Uber Moshion? (N) > ",12)) or "N"
  if uber in ['Y','y','yes','YES','Yes']:
    uber = True
  else:
    uber = False
  return {
    'inseq': inseq_path,
    'start': start,
    'end': end,
    'moshseq': moshseq_path,
    'moshstart': moshfirst,
    'outdir': outdir,
    'bitrate': bitrate,
    'keyframe': keyframe,
    'threshold': threshold,
    'interval': interval,
    'uber': uber
  }

def main():
  usage = "Usage: \n%prog --start 1 --end 10 -i /my/great/sequence.%04d.jpg -m /my/great/tex.%04d.jpg -f 1 -o /my/great/moshion_output"
  version=__import__('moshion').get_version()
  description="moshion v%s - Datamoshing Motion" % version
  parser = OptionParser(usage=usage, version=version, description=description)

  parser.add_option("-s", "--start",       dest="start",       help="first frame of input sequence")
  parser.add_option("-e", "--end",         dest="end",         help="last frame of input sequence")
  parser.add_option("-i", "--inseq",       dest="inseq",       help="A path to an image sequence. Use 'name.%04d.extension'.")
  parser.add_option("-m", "--moshseq",     dest="moshseq",     help="A path to a mosh sequence. Use 'name.%04d.extension'. This sequence will drive the motion of the i_frame.")
  parser.add_option("-f", "--moshstart",   dest="moshstart",   help="first frame of mosh sequence")
  parser.add_option("-b", "--bitrate",     dest="bitrate",     help="bitrate of encoded video")
  parser.add_option("-k", "--keyframe",    dest="keyframe",    help="Key frame interval, also known as GOP length. This determines the maximum distance between I-frames. It should be higher then len(inputs)+i_frame.")
  parser.add_option("-t", "--threshold",   dest="threshold",   help="Adjusts the sensitivity of x264's scene-cut detection. Recommended super high.")
  parser.add_option("-x", "--interval",    dest="interval",    help="spacing of p frames in moshion seq")
  parser.add_option("-o", "--outdir",      dest="outdir",      help="Full path to output directory")
  parser.add_option("-a", "--avionly",     dest="avionly",     help="If set to true, only generates the source AVI.", action="store_true", default=False)
  parser.add_option("-n", "--noseq",       dest="noseq",       help="If set to true, does not write image sequence.", action="store_true", default=False)
  parser.add_option("-w", "--writeseq",    dest="writeseq",    help="If set to true, tries to only write the image sequence from a pre-existing moshion AVI.", action="store_true", default=False)
  parser.add_option("-q", "--interactive", dest="interactive", help="Use prompts to enter info.", action="store_true", default=False)
  # special sauce, lettuce, cheese
  parser.add_option("-u", "--uber",       dest="uber",       help="If set to true, uses the UBER technique.", action="store_true", default=False)

  (options, args) = parser.parse_args()


  if options.interactive:
    moshion_options=interactive()
    moshion = Moshion(**moshion_options)
    moshion.do_full_mosh()
  else:
    if None in [options.start, options.end, options.inseq, options.moshseq, options.moshstart, options.outdir]:
      parser.print_help()
      sys.exit(1)
  
    if IS_TTY: print hilite("{1}moshion v{0}{1}For a list of available options use the -h flag".format(version, HR), 7)
  
    moshion_options = {
      'start' : options.start,
      'end' : options.end,
      'inseq' : options.inseq,
      'moshseq' : options.moshseq,
      'moshstart' : options.moshstart,
      'outdir' : options.outdir,
      'avionly': options.avionly,
      'uber': options.uber
    }
  
    moshion_options['bitrate'] = options.bitrate if options.bitrate else "8000"
    moshion_options['keyframe'] = options.keyframe if options.keyframe else "999"
    moshion_options['threshold'] = options.threshold if options.threshold else "100000000"
    moshion_options['interval'] = options.interval if options.interval else "8"
    
    if options.avionly and options.writeseq:
      if IS_TTY: print hilite("ERROR: you can't use avionly and writeseq options together!",10)
      parser.print_help()
      sys.exit(1)
  
    moshion = Moshion(**moshion_options)
    
    if not moshion_options['avionly'] and not options.noseq and not options.writeseq:
      moshion.do_full_mosh()
  
    if options.avionly:
      moshion.write_movie()
  
    if options.noseq:
      moshion.write_movie()
      moshion.mosh()
    
    if options.writeseq:
      moshion.write_sequence()

  echo_cmd = "gomoshion.py"
  echo_cmd = " ".join([echo_cmd, "--start {start} --end {end} --moshstart {moshstart}".format(start=moshion_options['start'],end=moshion_options['end'],moshstart=moshion_options['moshstart'])])
  echo_cmd = " ".join([echo_cmd, "--inseq {inseq} --moshseq {moshseq}".format(inseq=moshion_options['inseq'],moshseq=moshion_options['moshseq'])])
  echo_cmd = " ".join([echo_cmd, "--outdir {outdir}".format(outdir=moshion_options['outdir'])])
  echo_cmd = " ".join([echo_cmd, "--bitrate {bitrate} --keyframe {keyframe} --threshold {threshold} --interval {interval}".format(bitrate=moshion_options['bitrate'],keyframe=moshion_options['keyframe'],threshold=moshion_options['threshold'],interval=moshion_options['interval'])])
  if options.avionly: echo_cmd = " ".join([echo_cmd, "--avionly"])
  if options.noseq: echo_cmd = " ".join([echo_cmd, "--noseq"])
  if options.writeseq: echo_cmd = " ".join([echo_cmd, "--write"])
  if moshion_options['uber']: echo_cmd = " ".join([echo_cmd, "--uber"])
  

  if IS_TTY: print hilite("{0}COMMAND:\n{1}{0}".format(HR, echo_cmd),12)
  if IS_TTY: print hilite("{0}Moshion Complete!{0}".format(HR),3)
  sys.exit(0)


if __name__ == "__main__":
  main()



