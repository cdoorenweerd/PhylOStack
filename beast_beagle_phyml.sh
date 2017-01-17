#!/bin/sh
#
# Installation script for BEAST v2.3.2 with Beagle 
# and Phytime v3.3 from the Phyml package on Linux Ubuntu 14.04
# BEAST global executable: beast
# Phytime global executable: phytime
# TreeAnnotator global executable: treeannotator


# dependencies
sudo add-apt-repository -y ppa:webupd8team/java
sudo add-apt-repository -y "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) main universe"
sudo apt-get -y update >> /home/ubuntu/BEAST_installation.log
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections 
sudo apt-get -y install oracle-java8-installer
sudo apt-get -y install oracle-java8-set-default
sudo apt-get -y install build-essential autoconf automake libtool subversion pkg-config

# phytime
cd /usr/local/
git clone https://github.com/stephaneguindon/phyml.git
cd phyml
sudo ./autogen.sh
sudo ./configure --enable-phytime
sudo make
sudo ln -s /usr/local/phyml/src/phytime /usr/bin/phytime

# beagle
cd /usr/local
sudo git clone --depth=1 https://github.com/beagle-dev/beagle-lib.git
cd beagle-lib
sudo ./autogen.sh && sudo ./configure --prefix=/usr/local && sudo make install
export LD_LIBRARY_PATH=$HOME/lib:$LD_LIBRARY_PATH
export PKG_CONFIG_PATH=$HOME/lib/pkdgconfig:$PKG_CONFIG_PATH

# beast
cd /usr/bin/
sudo mkdir /usr/bin/BEASTv2.3.2
sudo wget https://github.com/CompEvol/beast2/releases/download/v2.3.2/BEAST.v2.3.2.Linux.tgz
sudo tar -xzf BEAST.v2.3.2.Linux.tgz -C /usr/bin/BEASTv2.3.2
sudo /usr/bin/BEASTv2.3.2/beast/bin/addonmanager -add BEASTLabs
sudo ln -s /usr/bin/BEASTv2.3.2/beast/bin/beast /usr/bin/beast
sudo ln -s /usr/bin/BEASTv2.3.2/beast/bin/treeannotator /usr/bin/treeannotator
cd
sudo /sbin/ldconfig -v
