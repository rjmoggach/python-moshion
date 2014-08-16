import sys

#color_none = '\x1b[0m'
#color_black = '\x1b[30m'
#color_red = '\x1b[31m'
#color_green = '\x1b[32m'
#color_brown = '\x1b[33m'
#color_blue = '\x1b[34m'
#color_magenta = '\x1b[35m'
#color_cyan = '\x1b[36m'
#color_light_gray = '\x1b[37m'
#color_dark_gray = '\x1b[30;1m'
#color_bright_red = '\x1b[31;1m'
#color_bright_green = '\x1b[32;1m'
#color_yellow = '\x1b[33;1m'
#color_bright_blue = '\x1b[34;1m'
#color_purple = '\x1b[35;1m'
#color_bright_cyan = '\x1b[36;1m'
#color_white = '\x1b[37;1m'


def hilite(string, err):
  attr = []
  if err: attr.append('31')
  else: attr.append('32')
  attr.append('1')
  newstr = "\x1b[%sm%s\x1b[0m" % (';'.join(attr), string)
  return newstr


IS_TTY = sys.stdout.isatty()
HR="\n--------------------------------------------------------------------\n"
