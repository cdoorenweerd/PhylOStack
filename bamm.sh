#!/bin/sh
#
# Installation script for BAMM v2.5 on Linux Ubuntu 14.04
# BAMM global executable: bamm

# dependencies
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get -y update
sudo apt-get -y install cmake build-essential g++-6


# bamm
cd /usr/local/
sudo git clone https://github.com/macroevolution/bamm.git
cd bamm
sudo mkdir build
cd build
sudo cmake ..
sudo make -j
sudo make install
