# python-moshion - Datamoshing Motion

> **moshion** is a standalone tool and library used to datamosh
> two video sequences such that the motion of both clips is retained.

## **THIS IS NOT EVEN CLOSE TO PRODUCTION READY. WE ARE BUILDING.**


## Report Issues/Bugs

* [BitBucket Issue Tracker](https://bitbucket.org/mogga/python-moshion/issues "Issues")




## Status and License

Copyright (c) 2014 Robert Moggach, Fabio Piparo & contributors.

Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php




## What It Does

Traditional 'datamoshing' involves removing I-frames from encoded videos to create encoding artifacts
that appear to make frames melt into one another by inheriting the motion of the incoming footage.
This is cool but the result is a still frame - we wanted a moving outgoing picture as well as the incoming motion/mosh texture.
By progressively deleting frames from the outgoing clip along with the I-frame of the incoming clip, we create a series of
frames that represent the outgoing clip moshed by the motion of the incoming clip. Give it a try.



## Contributing

All kinds of contributions are welcome - code, tests, documentation, bug reports, ideas, etc.

Currently we need to implement the following:

* testing
* optimization
* encoding options, codecs, tricks to make it better
* portability
* realtime???


### Forking through BitBucket

First of all, you need to fork from the official repository...

    https://bitbucket.org/mogga/python-moshion/fork

Now you can change whatever you want, commit, push to your fork and when 
your contribution is done, follow the pull request link and send us a 
request explaining what you did and why.


### Running the tests

Ha! Tests. Right.



## Documentation


### Installation

We don't have any installer at the moment so you kinda need to know what you're doing.
Start by cloning the repo:

    git clone https://mogga@bitbucket.org/mogga/python-moshion.git


### Command Line Tool

This package also provides a command line interface that could be more robust and offer more
feedback when it doesn't work but for us, it works.

Try it out now using the following from within to repo to use the test footage dir:

    ./mosh.py --input `pwd`/tests/footage/input/input_ftg.%04d.jpg --mosh `pwd`/tests/footage/moshtex/moshtex_ftg.%04d.jpg -s 1 -e 20 -o `pwd`/tests/footage/output -f 1



## Acknowledgements

We use a couple great packages to get this working. First and foremost is [pymosh](https://github.com/grampajoe/pymosh "PyMosh")
so a big thank you for that headstart. The really great [Ruby AviGlitch](http://ucnv.github.io/aviglitch/) is great too although
this is python so it was more of an inspiration than anything else. Being VFX/CG artists we also rely on [cgkit](http://cgkit.sourceforge.net)
which we use for it's sequence parsing bits.

For our tests we used a few bits from the internet archive specifically this clip: 

* [InternetArchive35mmStockFootageSampleReel](https://archive.org/details/InternetArchive35mmStockFootageSampleReel)


## Links

Here are some great places to learn about datamoshing, glitch art, pixel sorting.
It's not comprehensive by any stretch... just the links we found as we did our research.

* [pymosh](https://github.com/grampajoe/pymosh "PyMosh")
* [Perl Autodatamosh](https://github.com/grampajoe/Autodatamosh)
* [Ruby AviGlitch](http://ucnv.github.io/aviglitch/)
* [PixelSorting](https://github.com/jeffThompson/PixelSorting)
* [Le_DataMoshing](http://wiki.labomedia.org/index.php/Le_DataMoshing)
* [Databend Gist](https://gist.github.com/adrn/4090186)
* [Databend](https://github.com/cschlisner/Databend)
* [Quartz Composer Datamosh](http://kriss.cx/tom/datamosh/)
* [GL PBO Glitch](https://github.com/bangnoise/GL-PBO-Glitch)
* [Echobender](http://www.hellocatfood.com/echobender/)
* [Glitch Things](http://www.hellocatfood.com/tag/glitch/)
* [Processing Glitch](http://www.xradiograph.com/Processing/Glitch)
* [dataswitch](https://github.com/dataswitch/Experimental/tree/master/databend)
* [imageglitch](http://www.sun-art.org/creativecoding/imageglitch/)
* [imageglitcher](http://www.airtightinteractive.com/2011/02/glitch-your-images-with-imageglitcher/)
* [Databending](http://www.jackhagley.com/Experimental-Databending)
* [Encoding Explained](http://objavi.booki.cc/books/alookatopenvideo-en-2013.01.10-12.43.09/ch010_encoding-explained.html)

