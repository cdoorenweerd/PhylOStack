#!/bin/sh
#
# Installation script for Structure 2.3.4 (Jul 2012). Compiled from source code because packages are built for 32 bit only. Executable: structure

# download Structure and compile from source
cd /usr/local
sudo mkdir structure
cd /usr/local/structure
sudo wget http://pritchardlab.stanford.edu/structure_software/release_versions/v2.3.4/structure_kernel_source.tar.gz
sudo tar -xzvf structure_kernel_source.tar.gz
cd /usr/local/structure/structure_kernel_src
sudo make
sudo ln -s /usr/local/structure/structure_kernel_src/structure /usr/bin/structure

# install GNU parallel
sudo apt-get update
sudo apt-get install parallel