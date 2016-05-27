#!/bin/sh
#
# Silent installation script for Exabayes v1.4.1 AVX open-MPI on Linux Ubuntu 14.04
# Exabayes global executable: exabayes
# Consense global executable: consense

# STDOUT log
touch /home/ubuntu/Exabayes_installation.log

# dependencies
sudo apt-get -y update >> /home/ubuntu/Exabayes_installation.log
sudo apt-get -y install git htop build-essential autoconf openmpi-bin libopenmpi-dev libmpich2-dev mpich2 subversion libtool pkg-config openjdk-6-jdk >> /home/ubuntu/Exabayes_installation.log
    
# exabayes
cd /usr/local/
sudo wget http://sco.h-its.org/exelixis/material/exabayes/1.4.1/exabayes-1.4.1-linux-openmpi-avx.tar.gz >> /home/ubuntu/Exabayes_installation.log
sudo tar -xzf exabayes-1.4.1-linux-openmpi-avx.tar.gz -C /usr/local/ >> /home/ubuntu/Exabayes_installation.log
sudo ln -s /usr/local/exabayes-1.4.1/bin/bin/exabayes /usr/bin/exabayes
sudo ln -s /usr/local/exabayes-1.4.1/bin/bin/consense /usr/bin/consense
sudo ln -s /usr/lib/libmpi_cxx.so.1 /usr/lib/libmpi_cxx.so.0
sudo ln -s /usr/lib/libmpi.so.1 /usr/lib/libmpi.so.0
sudo /sbin/ldconfig -v