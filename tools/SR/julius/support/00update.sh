#!/bin/sh
#
# usage: ./support/00update.sh /some/where/julius-*.*-linuxbin.tar.gz
#
# update win32bin package from linuxbin of the same version
#
# should be invoked at the parent directory.
#
# you should put windows binaries in bin/ manually!
#

# expand linux binary package
rm -rf linuxbin julius-*-linuxbin
tar xzvf $1
ln -s julius-*-linuxbin linuxbin

# update doc
rm -rf doc
cp -p linuxbin/00readme.txt .
cp -p linuxbin/00readme-ja.txt .
cp -p linuxbin/LICENSE.txt .
cp -p linuxbin/Release* .
cp -p linuxbin/Sample* .
rsync -avz linuxbin/doc .

# convert code
qkc -s -m 00readme-ja.txt 00readme.txt LICENSE.txt Release* Sample*
find doc -name '*.txt' -exec qkc -s -m {} \;

# end
rm -rf linuxbin julius-*-linuxbin
echo 'You should update these manually:'
echo 'bin/* 00readme-win32bin.txt 00readme-win32bin-ja.txt'
