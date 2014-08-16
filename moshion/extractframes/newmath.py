#!/usr/bin/env python
import tempfile
import contextlib
import math
def float_range(a, b, inc):
    """
    Returns a list containing an arithmetic progression of floats.
    This is simply a float version of the built-in range(a, b, step)
    function.  The result is [ , ) as always in Python.
    """
    try:
        x = [float(a)]
    except:
        raise ValueError("float value required")
    for i in range(1, int(math.ceil((b - a ) / inc))):
        x.append(a + i * inc)
    return x

@contextlib.contextmanager
def temp_dir(**kwargs):
    tempdir = tempfile.mkdtemp(**kwargs)
    yield tempdir
    subprocess.check_call(['rm', '-rf', tempdir])

