#!/bin/sh
#
# Silent installation script for the P4 phylogenetics package on Linux Ubuntu 14.04
# http://p4.nhm.ac.uk/installation.html
# P4 global executable: p4

# dependencies
sudo apt-get -y update
sudo apt-get -y install python-numpy python-scipy libgsl0-dev python-dev

# p4
cd /usr/local
sudo git clone https://github.com/pgfoster/p4-phylogenetics
cd p4-phylogenetics
sudo python setup.py build
sudo python setup.py install