======================================================================
                  Large Vocabulary Continuous Speech
                          Recognition Engine

                                Julius

                                                (Rev 3.5   2005/11/11)
                                                (Rev 3.5.1 2006/03/31)
                                                (Rev 3.5.2 2006/07/31)

 Copyright (c) 1991-2006 Kawahara Lab., Kyoto University
 Copyright (c) 1997-2000 Information-technology Promotion Agency, Japan
 Copyright (c) 2000-2006 Shikano Lab., Nara Institute of Science and Technology
 Copyright (c) 2005-2006 Julius project team, Nagoya Institute of Technology
 All rights reserved

======================================================================

About this package
===================

This package contains win32 binary executables of Julius-3.5.2 for Windows.

Julius-3.5.2 is fullly compatible with 3.5.1 and 3.5.  
If you are using older version, please overwrite the binaries by
the files in "bin" directory.

Please see the "00readme.txt" and "Release.txt" to see what's changed
and what's new on Julius-3.5.2.


Running environment
====================

Julius will run on most Windows OS, including 2000 and XP.
DirectSound is needed for direct recognition of microphone input.
16kHz, 16bit, monoral recording should be supported on your environment.

Perl is needed run the recognition grammar construction tools.
They are tested on cygwin, MinGW+MSYS and ActivePerl.

The binaries are compiled on Windows XP SP2 + MinGW-5.0.2 (gcc).


Files
=========

Binaries are located in bin/ :

    [Main]
    julius.exe	    Julius-3.5.2 (fast)
    julian.exe	    Julian-3.5.2 (fast)
	(*-std	    standard (slow but high accuracy) version)
	(*-graphout word graph output version)

    [Tools]
    mkbingram.exe   convert 2-gram and reverse 3-gram to binary format
    mkbinhmm.exe    convert ascii hmmdefs to binary hmmdefs
    mkgshmm	    make GSHMM for Gaussian Mixture Selection
    mkss.exe	    compute noise spectrum from mic for spectral subtraction

    [Utilities]
    adinrec.exe	    record one sentence from microphone to a file
    adintool.exe    enhanced adinrec with segmentation and network support
    jcontrol.exe    sample client for Julius/Julian module mode

    [Grammar construction tools for Julian]
    mkdfa.pl	    grammar compiler
    accept_check.exe grammar accept check tool
    generate.exe     randam sentence generator
    yomi2voca.pl    convert Japanese Hiragana into phonemes

    [Result scoring tools]
    scoring/	    Recognition result evaluation scripts


About documents
=================

Documents for Julius-3.5.2 are included in this package:

    00readme.txt	 What's new
    LICENSE.txt		 Terms and conditions
    Release.txt	         Release notes and detailed changelog.
    Sample.jconf         Sample runtime config file for Julius.
    Sample-julian.jconf  Sample runtime config file for Julian.
    doc/                 Text manuals and documents


How to compile
===============

From 3.5, Windows source are incorporated into original.
You can compile the source code on Windows, on MSYS + MinGW,
by exactly the same procedure as Linux:

	   % tar xzvf julius-3.5.tar.gz
	   % cd julius-3.5
	   % ./configure
	   % make

You may need some extra libraries in addition to the basic 
setup of mingw.  Especially, a directx header "dsound.h" is
needed to compile Julius with DirectSound support.


For your information
=====================

You can get more information on the Julius Web page:

	 http://julius.sourceforge.jp/en/  (English)
	 http://julius.sourceforge.jp/	   (Japanese)

