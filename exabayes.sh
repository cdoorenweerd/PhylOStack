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
sudo wget http://sco.h-its.org/exelixis/material/exabayes/1.4.1/exabayes-1.4.1-linux-openmpi-avx.tar.gz
sudo tar -xzf exabayes-1.4.1-linux-openmpi-avx.tar.gz -C /usr/local/
sudo ln -s /usr/local/exabayes-1.4.1/bin/bin/exabayes /usr/bin/exabayes
sudo ln -s /usr/local/exabayes-1.4.1/bin/bin/consense /usr/bin/consense
sudo ln -s /usr/lib/libmpi_cxx.so.1 /usr/lib/libmpi_cxx.so.0
sudo ln -s /usr/lib/libmpi.so.1 /usr/lib/libmpi.so.0
sudo /sbin/ldconfig -v