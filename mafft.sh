#!/bin/sh
#
# Silent installation script for MAFFT v7.237 on Linux Ubuntu 14.04
# MAFFT global executable: mafft

# STDOUT log
touch /home/ubuntu/MAFFT_installation.log

# dependencies
sudo apt-get -y update >> /home/ubuntu/MAFFT_installation.log
sudo apt-get -y install alien >> /home/ubuntu/MAFFT_installation.log

# mafft
sudo mkdir /usr/local/mafft
cd /usr/local/mafft
sudo wget http://mafft.cbrc.jp/alignment/software/mafft-7.273-gcc_fc6.x86_64.rpm >> /home/ubuntu/MAFFT_installation.log
sudo alien -i mafft-7.273-gcc_fc6.x86_64.rpm >> /home/ubuntu/MAFFT_installation.log