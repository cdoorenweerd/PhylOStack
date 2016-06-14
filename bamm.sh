#!/bin/sh
#
# Installation script for BAMM v2.5 on Linux Ubuntu 14.04
# BAMM global executable: bamm

# dependencies
sudo add-apt-repository -y ppa:ubuntu-toolchain-r/test
sudo apt-get -y update
sudo apt-get -y install cmake build-essential gcc-4.9 g++-4.9
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.9


# bamm
cd /usr/local/
sudo git clone https://github.com/macroevolution/bamm.git
cd bamm
sudo mkdir build
cd build
sudo cmake ..
sudo make -j
sudo make install