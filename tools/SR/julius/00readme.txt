======================================================================
                  Large Vocabulary Continuous Speech
                          Recognition Engine

                                Julius

                                                (Rev 1.0   1998/02/20)
                                                (Rev 2.0   1999/02/20)
                                                (Rev 3.0   2000/02/14)
                                                (Rev 3.1   2000/05/11)
                                                (Rev 3.2   2001/06/18)
                                                (Rev 3.3   2002/09/12)
                                                (Rev 3.4   2003/10/01)
                                                (Rev 3.4.1 2004/02/25)
                                                (Rev 3.4.2 2004/04/30)
                                                (Rev 3.5   2005/11/11)
                                                (Rev 3.5.1 2006/03/31)
                                                (Rev 3.5.2 2006/07/31)

 Copyright (c) 1991-2006 Kawahara Lab., Kyoto University
 Copyright (c) 1997-2000 Information-technology Promotion Agency, Japan
 Copyright (c) 2000-2005 Shikano Lab., Nara Institute of Science and Technology
 Copyright (c) 2005-2006 Julius project team, Nagoya Institute of Technology
 All rights reserved

======================================================================

What's new in Julius-3.5.2 ?
=============================

Julius/Julian rev.3.5.2 is a minor update to improves performance on
Windows, enhancements and fixes for word graph outputs, and other bug
fixes.  All users of previous version is encouraged to upgrade to 3.5.2.

Summary of changes in 3.5.2:

  o  Speed-up and improvement on Windows console.
     - DirectSound
     - Recent MinGW support
  o  More accurate word graph output.
     - new optimization params: -graphcut, -graphboundloop, -graphsearchdelay
  o  Add capability to output word graph instead of trellis on 1st pass.
  o  Bug fixes.
  o  Imprementation improvements.

Details of the changes are listed in "Release.txt".

Please note that if you want to compile Julius with DirectSound
support, you need DirectX headers installed in your mingw / cygwin
environment.  If not exist, configure will choose an old interface.
Please see install instruction on the Web.


Contents of Julius-3.5.2
=========================

	(Documents with suffix "ja" are written in Japanese)

	00readme.txt		ReadMe (This file)
	LICENSE.txt		Terms and conditions of use
	Release.txt		Release note / ChangeLog
	configure		configure script
	configure.in		
	Sample.jconf		Sample configuration file for Julius-3.5.2
	Sample-julian.jconf	Sample configuration file for Julian-3.5.2
	julius/			Julius/Julian 3.5.2 sources
	libsent/		Julius/Julian 3.5.2 library sources
	adinrec/		Record one sentence utterance to a file
	adintool/		Record/split/send/receive speech data
	gramtools/		Tools to build and test recognition grammar
	jcontrol/		A sample network client module 
	mkbingram/		Convert N-gram to binary format
	mkbinhmm/		Convert ascii hmmdefs to binary format
	mkgshmm/		Model conversion for Gaussian Mixture Selection
	mkss/			Estimate noise spectrum from mic input
	support/		some tools to compile julius/julian from source
	olddoc/			ChangeLogs before 3.2


From rev.3.4, a grammar-based recognizer called "Julian" is also
included.  the Julian can be compiled from Julius sources by
specifying configure option "--enable-julian".  The grammar format
Julian uses is original one based on BNF.  A grammar compiler that
converts the written BNF to finite state grammar, and several test
tools are included in this archive.


About documentation
====================

- Documents

	The overall document that contains installation procedure,
	tutorial, model formats and more, are available at:

	    http://julius.sourceforge.jp/en/Julius-3.2-book-e.pdf

	It is basically based on rev.3.2, but will be also helpful for
	recent versions.

	The most up-to-date documentations and references can be available
	on the Julius Web site. 

	    http://julius.sourceforge.jp/en/

	Please refer to other documents in Japanese at:

	    http://julius.sourceforge.jp/

- Recent changes

	Changes between releases are fully listed in "Release.txt".

- Online reference manuals

	for Julius, adintool, and other tools can be obtained in each
	source directory, in both Unix man format and plain text.


For more information, see the URL below:

    http://julius.sourceforge.jp/	(Japanese)
    http://julius.sourceforge.jp/en/	(English)

Some documents are available only in Japanese.  We are sorry for the
inconvenience.


LICENSE
========

Julius is an open-source software distributed as is, and available for
free.  For more information about its license, please refer to
"LICENSE.txt" in this archive.
