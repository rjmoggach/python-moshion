"""
 python-moshion - Datamoshing Motion
 (c) 2014 Robert Moggach, Fabio Piparo and contributors
 Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php

 __init__.py
  
 moshion is a command line interface to ffmpeg used to datamosh two
 video sequences to purposely create encoding artifacts.

"""

#v0.0.1b
VERSION = (0, 0, 1, 'beta', 1)

STATUSES = {'alpha': 'a', 'beta': 'b', 'releasecandidate': 'rc' }


def get_version():
    version = '%s.%s' % (VERSION[0], VERSION[1])
    if VERSION[2]:
        version = '%s.%s' % (version, VERSION[2])
    if VERSION[3:] == ('alpha', 0):
        version = '%s pre-alpha' % version
    else:
        if VERSION[3] != 'final':
            version = '%s%s%s' % (version, STATUSES[VERSION[3]], VERSION[4])
    return version

__version__ = get_version()
__all__ = ['util']

