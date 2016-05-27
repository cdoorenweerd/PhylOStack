#!/bin/sh
#
# Silent installation script for BAMM v2.5 on Linux Ubuntu 14.04
# BAMM global executable: bamm

# STDOUT log
touch /home/ubuntu/BAMM_installation.log

# dependencies
sudo apt-get -y update >> /home/ubuntu/BAMM.log
sudo apt-get -y install cmake >> /home/ubuntu/BAMM.log

# bamm
cd /usr/local/
sudo git clone https://github.com/macroevolution/bamm.git >> /home/ubuntu/BAMM.log
cd bamm
sudo mkdir build
cd build
sudo cmake ..
sudo make -j
sudo make install