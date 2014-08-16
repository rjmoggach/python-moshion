# python-moshion - Datamoshing Motion

> **moshion** is a command line interface to [ffmpeg](https://www.ffmpeg.org "ffmpeg.org") 
> used to [datamosh](http://knowyourmeme.com/memes/datamoshing "Datamoshing")
> two video sequences to purposely create encoding artifacts.


**This software is in alpha state and no where near production ready.**

**Try it out but all the usual caveats apply. Use at your own risk etc.**



## Status and License

Copyright (c) 2014 Robert Moggach, Fabio Piparo & contributors.

Licensed under the MIT license: http://www.opensource.org/licenses/mit-license.php




## What It Does

Traditional 'datamoshing' involves removing I-frames from encoded videos to create encoding
artifacts that appear to make frames melt into one another by inheriting the motion of the 
incoming footage.

This is cool but the result is a moving still frame - we want a moving outgoing picture.
By progressively deleting frames from the outgoing clip along with the I-frame of the incoming clip, 
we hope to create a series of frames that represent the outgoing clip moshed by the motion of the 
incoming clip. Give it a try.

This has all been done before but usually only produces another video and without alot of flexibility
for what we need. We work in discreet frames so **moshion** takes two image sequences, encodes them
to create a moshed video and then extracts the new *moshed* frames as a new image sequence.


## Contributing

All kinds of contributions are welcome - code, tests, documentation, bug reports, ideas, etc.

Currently we need to implement the following:

* testing
* optimization
* more encoding options, codecs, tricks to make it better
* enhanced portability
* better code all around instead of the rushed hack this is now

Check out the issues to see what we're focused on.

* [GitHub Issue Tracker](https://github.com/mogga/python-moshion/issues "Issues")


### Forking through GitHub

First of all, you need to fork from the official repository...

    > [Fork python-moshion](https://github.com/mogga/python-moshion/fork "Fork")

Now you can change whatever you want, commit, push to your fork and when 
your contribution is done, follow the pull request link and explain what you did and why.



### Running the tests

Patience. Tests are important and will be implemented.



## Documentation

This is admittedly sparse but will get better. For now:

#### Installation

We don't have any installer at the moment so you kinda need to know what you're doing.

1) Start by cloning the repo:

    git clone https://github.com/mogga/python-moshion.git

#### Command Line Tool

From within the repo run the included command line script to get a feel for it.

    cd python-moshion
    ./gomoshion.py -s 1 -e 20 -f 5 --input `pwd`/tests/footage/input/input_ftg.%04d.jpg --mosh `pwd`/tests/footage/input/input_ftg.%04d.jpg -o `pwd`/tests/footage/output

> or use the interactive mode...

    ./gomoshion.py -q
    


## Acknowledgements

We use a couple great packages to get this working:

First and foremost is [pymosh](https://github.com/grampajoe/pymosh "PyMosh") so a big thank you for that headstart.

Being VFX/CG artists we also rely on [cgkit](http://cgkit.sourceforge.net) which we use for it's sequence parsing bits.

The really great [Ruby AviGlitch](http://ucnv.github.io/aviglitch/) is great too although this is python so it was more of an inspiration than anything else. 

For our tests we use a few bits from the [internet archive](https://archive.org/) specifically this clip: 

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

