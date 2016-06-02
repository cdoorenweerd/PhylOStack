#!/bin/sh
#
# Installation script for RAxML v8 AVX PTHREADS and RogueNaRok v1.0 on Linux Ubuntu 14.04
# RAxML global executable: raxmlHPC
# RogueNaRok global executable: RNR


# dependencies
sudo apt-get -y update
sudo apt-get -y install git htop build-essential autoconf libmpich2-dev mpich2 subversion libtool pkg-config

# raxml
cd /usr/local
sudo git clone https://github.com/stamatak/standard-RAxML.git
cd standard-RAxML
sudo make -f Makefile.AVX2.PTHREADS.gcc
sudo rm *.o
sudo ln -s /usr/local/standard-RAxML/raxmlHPC-PTHREADS-AVX2 /usr/bin/raxmlHPC
sudo /sbin/ldconfig -v

# roguenarok
cd /usr/local
sudo git clone https://github.com/aberer/RogueNaRok.git
cd RogueNaRok
sudo make mode=parallel
sudo ln -s /usr/local/RogueNaRok/RogueNaRok-parallel /usr/bin/RNR
sudo /sbin/ldconfig -v