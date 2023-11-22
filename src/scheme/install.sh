#!/bin/sh
sudo apt update && sudo apt upgrade -y
sudo apt install -y gcc make m4 libncurses-dev
wget https://ftp.gnu.org/gnu/mit-scheme/stable.pkg/12.1/mit-scheme-12.1-x86-64.tar.gz
tar xzf mit-scheme-12.1-x86-64.tar.gz
cd mit-scheme-12.1/src
./configure
make
sudo make install
cd -
rm -rf mit*