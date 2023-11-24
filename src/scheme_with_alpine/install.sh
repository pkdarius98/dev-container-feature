#!/bin/sh
sudo apk update && sudo apk upgrade
sudo apk add m4
wget https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/12.1/mit-scheme-12.1-x86-64.tar.gz
tar xzf mit-scheme-12.1-x86-64.tar.gz
cd mit-scheme-12.1/src
sed -i 's/extern char \*\* environ/\/\/extern char \*\* environ/g' ./microcode/prosproc.c
./configure
make
sudo make install
cd -
rm -rf mit*