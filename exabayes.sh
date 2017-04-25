#!/bin/sh
#
# Installation script for Exabayes v1.4.1 AVX open-MPI on Linux Ubuntu 14.04
# Exabayes global executable: exabayes
# Consense global executable: consense


# dependencies
sudo apt-get -y update
sudo apt-get -y install git htop build-essential autoconf openmpi-bin libopenmpi-dev libmpich2-dev mpich2 subversion libtool pkg-config openjdk-6-jdk

# exabayes
cd /usr/local/
sudo wget http://sco.h-its.org/exelixis/resource/download/software/exabayes-1.5.tar.gz
sudo tar -xzf exabayes-1.5.tar.gz -C /usr/local/
cd /usr/local/exabayes-1.5/
sudo ./configure --enable-mpi && make
sudo ln -s /usr/local/exabayes-1.5/bin/bin/exabayes /usr/bin/exabayes
sudo ln -s /usr/local/exabayes-1.5/bin/bin/consense /usr/bin/consense
sudo /sbin/ldconfig -v
