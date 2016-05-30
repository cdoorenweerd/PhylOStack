#!/bin/sh
#
# Silent installation script for MAFFT v7.237 on Linux Ubuntu 14.04
# MAFFT global executable: mafft

# dependencies
sudo apt-get -y update
sudo apt-get -y install alien

# mafft
sudo mkdir /usr/local/mafft
cd /usr/local/mafft
sudo wget http://mafft.cbrc.jp/alignment/software/mafft-7.273-gcc_fc6.x86_64.rpm
sudo alien -i mafft-7.273-gcc_fc6.x86_64.rpm