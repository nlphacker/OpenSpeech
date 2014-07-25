#!/usr/bin/perl
# Copyright (c) 1991-2006 Kawahara Lab., Kyoto University
# Copyright (c) 2000-2005 Shikano Lab., Nara Institute of Science and Technology
# Copyright (c) 2005-2006 Julius project team, Nagoya Institute of Technology, Nagoya Institute of Technology
# All rights reserved
#
# Generated automatically from yomi2voca.pl.in by configure. 
#

# �Ҥ餬�� -> ROMAN(ɸ�����) �Ѵ�������ץ�
#   .yomi -> .voca


while (<>) {
# ���ƥ���̾�Ϥ��äȤФ�
    if (/^%/){
	print;
	next;
    }
    chop;
# ɽ���ȤҤ餬���ɤߤ�ʬΥ
    @a = split;
    $_ = $a[1];
# �Ҥ餬�ʡ�Ĺ���ʳ��Ϥ��Τޤ�
# 2ʸ������ʤ��Ѵ���§
    s/�Ǥ�/ d i/g;
    s/�Ƥ�/ t i/g;
    s/����/ s i/g;
    s/����/ z i/g;
    s/����/ ky a/g;
    s/����/ ky u/g;
    s/����/ ky o/g;
    s/����/ sh a/g;
    s/����/ sh u/g;
    s/����/ sh e/g;
    s/����/ sh o/g;
    s/����/ ch a/g;
    s/����/ ch u/g;
    s/����/ ch e/g;
    s/����/ ch o/g;
    s/�ˤ�/ ny a/g;
    s/�ˤ�/ ny u/g;
    s/�ˤ�/ ny o/g;
    s/�Ҥ�/ hy a/g;
    s/�Ҥ�/ hy u/g;
    s/�Ҥ�/ hy o/g;
    s/�ߤ�/ my a/g;
    s/�ߤ�/ my u/g;
    s/�ߤ�/ my o/g;
    s/���/ ry a/g;
    s/���/ ry u/g;
    s/���/ ry o/g;
    s/����/ gy a/g;
    s/����/ gy u/g;
    s/����/ gy o/g;
    s/����/ j a/g;
    s/�¤�/ j a/g;
    s/����/ j u/g;
    s/����/ j e/g;
    s/����/ j o/g;
    s/�Ӥ�/ by a/g;
    s/�Ӥ�/ by u/g;
    s/�Ӥ�/ by o/g;
    s/�Ԥ�/ py a/g;
    s/�Ԥ�/ py u/g;
    s/�Ԥ�/ py o/g;
    s/����/ w i/g;
    s/����/ w e/g;
    s/����/ w o/g;
    s/�դ�/ f a/g;
    s/�դ�/ f i/g;
    s/�դ�/ f e/g;
    s/�դ�/ f o/g;

# 1������ʤ��Ѵ���§
    s/��/ a/g;
    s/��/ i/g;
    s/��/ u/g;
    s/��/ e/g;
    s/��/ o/g;
    s/��/ k a/g;
    s/��/ k i/g;
    s/��/ k u/g;
    s/��/ k e/g;
    s/��/ k o/g;
    s/��/ s a/g;
    s/��/ sh i/g;
    s/��/ s u/g;
    s/��/ s e/g;
    s/��/ s o/g;
    s/��/ t a/g;
    s/��/ ch i/g;
    s/��/ ts u/g;
    s/��/ t e/g;
    s/��/ t o/g;
    s/��/ n a/g;
    s/��/ n i/g;
    s/��/ n u/g;
    s/��/ n e/g;
    s/��/ n o/g;
    s/��/ h a/g;
    s/��/ h i/g;
    s/��/ f u/g;
    s/��/ h e/g;
    s/��/ h o/g;
    s/��/ m a/g;
    s/��/ m i/g;
    s/��/ m u/g;
    s/��/ m e/g;
    s/��/ m o/g;
    s/��/ r a/g;
    s/��/ r i/g;
    s/��/ r u/g;
    s/��/ r e/g;
    s/��/ r o/g;
    s/��/ g a/g;
    s/��/ g i/g;
    s/��/ g u/g;
    s/��/ g e/g;
    s/��/ g o/g;
    s/��/ z a/g;
    s/��/ j i/g;
    s/��/ z u/g;
    s/��/ z e/g;
    s/��/ z o/g;
    s/��/ d a/g;
    s/��/ j i/g;
    s/��/ z u/g;
    s/��/ d e/g;
    s/��/ d o/g;
    s/��/ b a/g;
    s/��/ b i/g;
    s/��/ b u/g;
    s/��/ b e/g;
    s/��/ b o/g;
    s/��/ p a/g;
    s/��/ p i/g;
    s/��/ p u/g;
    s/��/ p e/g;
    s/��/ p o/g;
    s/��/ y a/g;
    s/��/ y u/g;
    s/��/ y o/g;
    s/��/ w a/g;
    s/��/ N/g;
    s/��/ q/g;
    s/��/:/g;

#����¾���̤ʥ롼��
    s/��/ o/g;

    s/^ ([a-z])/$1/g;
    print @a[0], "\t", $_,"\n";
}
