#!/usr/bin/perl
# ----------------------------------------------------------------- #
#           The HMM-Based Speech Synthesis System (HTS)             #
#           developed by HTS Working Group                          #
#           http://hts.sp.nitech.ac.jp/                             #
# ----------------------------------------------------------------- #
#                                                                   #
#  Copyright (c) 2001-2012  Nagoya Institute of Technology          #
#                           Department of Computer Science          #
#                                                                   #
#                2001-2008  Tokyo Institute of Technology           #
#                           Interdisciplinary Graduate School of    #
#                           Science and Engineering                 #
#                                                                   #
# All rights reserved.                                              #
#                                                                   #
# Redistribution and use in source and binary forms, with or        #
# without modification, are permitted provided that the following   #
# conditions are met:                                               #
#                                                                   #
# - Redistributions of source code must retain the above copyright  #
#   notice, this list of conditions and the following disclaimer.   #
# - Redistributions in binary form must reproduce the above         #
#   copyright notice, this list of conditions and the following     #
#   disclaimer in the documentation and/or other materials provided #
#   with the distribution.                                          #
# - Neither the name of the HTS working group nor the names of its  #
#   contributors may be used to endorse or promote products derived #
#   from this software without specific prior written permission.   #
#                                                                   #
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND            #
# CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES,       #
# INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF          #
# MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE          #
# DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS #
# BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,          #
# EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED   #
# TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,     #
# DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON #
# ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,   #
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY    #
# OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE           #
# POSSIBILITY OF SUCH DAMAGE.                                       #
# ----------------------------------------------------------------- #


# Settings ==============================
$fclf = 'HTS_TTS_ENG';
$fclv = '1.0';
$dset = 'cmu_us_arctic';
$spkr = 'slt';
$qnum = '001';
$ver  = '1';

@SET        = ('cmp','dur');
@cmp        = ('mgc','lf0');
@dur        = ('dur');
$ref{'cmp'} = \@cmp;
$ref{'dur'} = \@dur;

%vflr = ('mgc' => '0.01',           # variance floors
         'lf0' => '0.01',
         'dur' => '0.01');

%thr  = ('mgc' => '000',            # minimum likelihood gain in clustering
         'lf0' => '000',
         'dur' => '000');

%mdlf = ('mgc' => '1.0',            # tree size control param. for MDL
         'lf0' => '1.0',
         'dur' => '1.0');

%mocc = ('mgc' => '10.0',           # minimum occupancy counts
         'lf0' => '10.0',
         'dur' => ' 5.0');

%gam  = ('mgc' => '000',            # stats load threshold
         'lf0' => '000',
         'dur' => '000');

%t2s  = ('mgc' => 'cmp',            # feature type to mmf conversion
         'lf0' => 'cmp',
         'dur' => 'dur');

%strb = ('mgc' => '1',              # stream start
         'lf0' => '2',
         'dur' => '1');

%stre = ('mgc' => '1',              # stream end
         'lf0' => '4',
         'dur' => '5');

%msdi = ('mgc' => '0',              # msd information
         'lf0' => '1',
         'dur' => '0');

%strw = ('mgc' => '1.0',            # stream weights
         'lf0' => '1.0',
         'dur' => '1.0');

%ordr = ('mgc' => '35',     # feature order
         'lf0' => '1',
         'dur' => '5');

%nwin = ('mgc' => '3',      # number of windows
         'lf0' => '3',
         'dur' => '0');

%nblk = ('mgc' => '3', # number of blocks for transforms
         'lf0' => '1',
         'dur' => '1');

%band = ('mgc' => '35', # band width for transforms
         'lf0' => '1',
         'dur' => '0');

%gvthr  = ('mgc' => '000',          # minimum likelihood gain in clustering for GV
           'lf0' => '000');

%gvmdlf = ('mgc' => '1.0',          # tree size control for GV
           'lf0' => '1.0');

%gvgam  = ('mgc' => '000',          # stats load threshold for GV
           'lf0' => '000');

@slnt = ('pau','h#','brth');        # silent and pause phoneme

#%mdcp = ('dy' => 'd',              # model copy
#         'A'  => 'a',
#         'I'  => 'i',
#         'U'  => 'u',
#         'E'  => 'e',
#         'O'  => 'o');


# Speech Analysis/Synthesis Setting ==============
# speech analysis
$sr = 48000;   # sampling rate (Hz)
$fs = 240; # frame period (point)
$fw = 0.55;   # frequency warping
$gm = 0;      # pole/zero representation weight
$lg = 1;     # use log gain instead of linear gain

# speech synthesis
$pf_mcp = 1.4; # postfiltering factor for mel-cepstrum
$pf_lsp = 0.7; # postfiltering factor for LSP
$fl     = 576;        # length of impulse response
$co     = 2047;            # order of cepstrum to approximate mel-cepstrum


# Modeling/Generation Setting ==============
# modeling
$nState      = 5;        # number of states
$nIte        = 5;         # number of iterations for embedded training
$beam        = '1500 100 5000'; # initial, inc, and upper limit of beam width
$maxdev      = 10;        # max standard dev coef to control HSMM maximum duration
$mindur      = 5;        # min state duration to be evaluated
$wf          = 5000;        # mixture weight flooring
$initdurmean = 3.0;             # initial mean of state duration
$initdurvari = 10.0;            # initial variance of state duration
$daem        = 0;          # DAEM algorithm based parameter estimation
$daem_nIte   = 10;     # number of iterations of DAEM-based embedded training
$daem_alpha  = 1.0;     # schedule of updating temperature parameter for DAEM

# generation
$pgtype     = 0;     # parameter generation algorithm (0 -> Cholesky,  1 -> MixHidden,  2 -> StateHidden)
$maxEMiter  = 20;  # max EM iteration
$EMepsilon  = 0.0001;  # convergence factor for EM iteration
$useGV      = 1;      # turn on GV
$maxGViter  = 50;  # max GV iteration
$GVepsilon  = 0.0001;  # convergence factor for GV iteration
$minEucNorm = 0.01; # minimum Euclid norm for GV iteration
$stepInit   = 1.0;   # initial step size
$stepInc    = 1.2;    # step size acceleration factor
$stepDec    = 0.5;    # step size deceleration factor
$hmmWeight  = 1.0;  # weight for HMM output prob.
$gvWeight   = 1.0;   # weight for GV output prob.
$optKind    = 'NEWTON';  # optimization method (STEEPEST, NEWTON, or LBFGS)
$nosilgv    = 1;    # GV without silent and pause phoneme
$cdgv       = 1;       # context-dependent GV


# Directories & Commands ===============
# project directories
$prjdir = '/media/nlphacker/6d49e9e9-e900-4908-936f-a20586aea495/OpenSpeech/voices/HTS-demo_CMU-ARCTIC-SLT';

# Perl
$PERL = '/usr/bin/perl';

# wc
$WC = '/usr/bin/wc';

# tee
$TEE = '/usr/bin/tee';

# HTS commands
$HCOMPV    = '/usr/local/HTS-2.3alpha/bin/HCompV';
$HLIST     = '/usr/local/HTS-2.3alpha/bin/HList';
$HINIT     = '/usr/local/HTS-2.3alpha/bin/HInit';
$HREST     = '/usr/local/HTS-2.3alpha/bin/HRest';
$HEREST    = '/usr/local/HTS-2.3alpha/bin/HERest';
$HHED      = '/usr/local/HTS-2.3alpha/bin/HHEd';
$HSMMALIGN = '/usr/local/HTS-2.3alpha/bin/HSMMAlign';
$HMGENS    = '/usr/local/HTS-2.3alpha/bin/HMGenS';
$ENGINE    = '/usr/local/bin/hts_engine';

# SPTK commands
$X2X      = '/usr/local/SPTK/bin/x2x';
$FREQT    = '/usr/local/SPTK/bin/freqt';
$C2ACR    = '/usr/local/SPTK/bin/c2acr';
$VOPR     = '/usr/local/SPTK/bin/vopr';
$VSUM     = '/usr/local/SPTK/bin/vsum';
$MC2B     = '/usr/local/SPTK/bin/mc2b';
$SOPR     = '/usr/local/SPTK/bin/sopr';
$B2MC     = '/usr/local/SPTK/bin/b2mc';
$EXCITE   = '/usr/local/SPTK/bin/excite';
$LSP2LPC  = '/usr/local/SPTK/bin/lsp2lpc';
$MGC2MGC  = '/usr/local/SPTK/bin/mgc2mgc';
$MGLSADF  = '/usr/local/SPTK/bin/mglsadf';
$MERGE    = '/usr/local/SPTK/bin/merge';
$BCP      = '/usr/local/SPTK/bin/bcp';
$LSPCHECK = '/usr/local/SPTK/bin/lspcheck';
$BCUT     = '/usr/local/SPTK/bin/bcut';
$VSTAT    = '/usr/local/SPTK/bin/vstat';
$NAN      = '/usr/local/SPTK/bin/nan';
$DFS      = '/usr/local/SPTK/bin/dfs';
$SWAB     = '/usr/local/SPTK/bin/swab';
$RAW2WAV  = '/usr/local/SPTK/bin/raw2wav';


# Switch ================================
$MKEMV = 1; # preparing environments
$HCMPV = 1; # computing a global variance
$IN_RE = 1; # initialization & reestimation
$MMMMF = 1; # making a monophone mmf
$ERST0 = 1; # embedded reestimation (monophone)
$MN2FL = 1; # copying monophone mmf to fullcontext one
$ERST1 = 1; # embedded reestimation (fullcontext)
$CXCL1 = 1; # tree-based context clustering
$ERST2 = 1; # embedded reestimation (clustered)
$UNTIE = 1; # untying the parameter sharing structure
$ERST3 = 1; # embedded reestimation (untied)
$CXCL2 = 1; # tree-based context clustering
$ERST4 = 1; # embedded reestimation (re-clustered)
$FALGN = 1; # forced alignment for no-silent GV
$MCDGV = 1; # making global variance
$MKUNG = 1; # making unseen models (GV)
$MKUN1 = 1; # making unseen models (1mix)
$PGEN1 = 1; # generating speech parameter sequences (1mix)
$WGEN1 = 1; # synthesizing waveforms (1mix)
$CONVM = 1; # converting mmfs to the hts_engine file format
$ENGIN = 1; # synthesizing waveforms using hts_engine
$SEMIT = 1; # semi-tied covariance matrices
$MKUNS = 1; # making unseen models (stc)
$PGENS = 1; # generating speech parameter sequences (stc)
$WGENS = 1; # synthesizing waveforms (stc)
$UPMIX = 1; # increasing the number of mixture components (1mix -> 2mix)
$ERST5 = 1; # embedded reestimation (2mix)
$MKUN2 = 1; # making unseen models (2mix)
$PGEN2 = 1; # generating speech parameter sequences (2mix)
$WGEN2 = 1; # synthesizing waveforms (2mix)

1;
