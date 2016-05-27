#!/bin/sh
#
# Silent installation script for RAxML v8 AVX PTHREADS and RogueNaRok v1.0 on Linux Ubuntu 14.04
# RAxML global executable: raxmlHPC
# RogueNaRok global executable: RNR

# STDOUT log
touch /home/ubuntu/RAxML_RNR_installation.log

# dependencies
sudo apt-get -y update >> /home/ubuntu/RAxML_RNR_installation.log
sudo apt-get -y install git htop build-essential autoconf libmpich2-dev mpich2 subversion libtool pkg-config >> /home/ubuntu/RAxML_RNR_installation.log

# raxml
cd /usr/local
sudo git clone https://github.com/stamatak/standard-RAxML.git >> /home/ubuntu/RAxML_RNR_installation.log
cd standard-RAxML
sudo make -f Makefile.AVX2.PTHREADS.gcc >> /home/ubuntu/RAxML_RNR_installation.log
sudo rm *.o >> /home/ubuntu/RAxML_RNR_installation.log
sudo ln -s /usr/local/standard-RAxML/raxmlHPC-PTHREADS-AVX2 /usr/bin/raxmlHPC
sudo /sbin/ldconfig -v

# roguenarok
cd /usr/local
sudo git clone https://github.com/aberer/RogueNaRok.git >> /home/ubuntu/RAxML_RNR_installation.log
cd RogueNaRok
sudo make mode=parallel >> /home/ubuntu/RAxML_RNR_installation.log
sudo ln -s /usr/local/RogueNaRok/RogueNaRok-parallel /usr/bin/RNR
sudo /sbin/ldconfig -v