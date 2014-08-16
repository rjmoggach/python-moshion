"""
 python-moshion - Datamoshing Motion
 (c) 2014 Robert Moggach, Fabio Piparo and contributors
 Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php

 util.py
  
 moshion is a command line interface to ffmpeg used to datamosh two
 video sequences to purposely create encoding artifacts.

"""

import sys


COLOR_CODES={
  'none':        '0',
  'black':       '30',
  'red':         '31',
  'green':       '32',
  'brown':       '33',
  'blue':        '34',
  'magenta':     '35',
  'cyan':        '36',
  'light_gray':  '37',
  'dark_gray':   '30;1',
  'bright_red':  '31;1',
  'bright_green':'32;1',
  'yellow':      '33;1',
  'bright_blue': '34;1',
  'purple':      '35;1',
  'bright_cyan': '36;1',
  'white':       '37;1'
}

COLORS=[
  'none', # 0
  'black', # 1
  'red', # 2
  'green', # 3
  'brown', # 4
  'blue', # 5
  'magenta', # 6
  'cyan', # 7
  'light_gray', # 8
  'dark_gray', # 9
  'bright_red', # 10
  'bright_green', # 11
  'yellow', # 12
  'bright_blue', # 13
  'purple', # 14
  'bright_cyan', # 15
  'white' # 16
]


def hilite(string, color=0):
  '''hilite a string in TTY terminals/shells'''
  color_code = COLOR_CODES[COLORS[color]]
  out_str = "\x1b[{color_code}m{string}\x1b[0m".format(color_code=color_code, string=string)
  return out_str


IS_TTY = sys.stdout.isatty()


HR=hilite("-"*64,4).join(["\n","\n"])
