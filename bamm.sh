#!/bin/sh
#
# Installation script for BAMM v2.5 on Linux Ubuntu 14.04
# BAMM global executable: bamm

# dependencies
sudo apt-get -y update
sudo apt-get -y install cmake build-essential

# bamm
cd /usr/local/
sudo git clone https://github.com/macroevolution/bamm.git
cd bamm
sudo mkdir build
cd build
sudo cmake ..
sudo make -j
sudo make install