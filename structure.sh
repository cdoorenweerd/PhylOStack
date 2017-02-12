#!/bin/sh
#
# Installation script for Structure 2.3.4 (Jul 2012). Compiled from source code because packages are built for 32 bit only. Executable: structure

cd /usr/local
mkdir structure
cd structure
sudo wget http://pritchardlab.stanford.edu/structure_software/release_versions/v2.3.4/structure_kernel_source.tar.gz
cd structure_kernel_src
sudo make
sudo ln -s /usr/local/structure/structure_kernel_src/structure /usr/bin/structure