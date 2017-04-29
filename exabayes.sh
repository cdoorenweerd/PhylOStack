#!/bin/sh
#
# Installation script for Exabayes v1.5 AVX open-MPI on Linux Ubuntu 14.04
# Exabayes global executable: exabayes
# Consense global executable: consense


# dependencies
sudo apt-get -y update
sudo apt-get -y install git htop build-essential autoconf autogen openmpi-bin libopenmpi-dev libmpich2-dev mpich2 subversion libtool pkg-config openjdk-6-jdk
sudo apt-get -y install cmake build-essential gcc-6 g++-6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60 --slave /usr/bin/g++ g++ /usr/bin/g++-6    

# exabayes
cd /usr/local/
sudo wget http://sco.h-its.org/exelixis/resource/download/software/exabayes-1.5.tar.gz
sudo tar -xzf exabayes-1.5.tar.gz -C /usr/local/
cd /usr/local/exabayes-1.5/
./configure --enable-mpi && make -j
sudo ln -s /usr/local/exabayes-1.5/exabayes /usr/bin/exabayes
sudo ln -s /usr/local/exabayes-1.5/consense /usr/bin/consense
sudo /sbin/ldconfig -v
