#!/bin/sh
#
# Silent installation script for Miniconda2, ETE3 and PartitionFinder v2 on Linux Ubuntu 14.04
# PartitionFinder global executable: partitionfinder

# miniconda, partitionfinder dependencies
cd /usr/local/
sudo wget https://repo.continuum.io/miniconda/Miniconda2-latest-Linux-x86_64.sh
bash Miniconda2-latest-Linux-x86_64.sh -b -p /usr/local/Miniconda
sudo sed -r -i 's/.{6}//' /etc/environment
sudo sed -i 's|^|PATH="/home/ubuntu/Miniconda/bin:|' /etc/environment
sudo rm /usr/local/Miniconda2-latest-Linux-x86_64.sh
cd
export PATH="/home/ubuntu/Miniconda/bin:$PATH"
conda install --yes -c blaze scipy pyparsing pandas pytables scikit-learn

# ete3
conda install --yes -c etetoolkit ete3 ete3_external_apps

# partitionfinder
cd /usr/local/
sudo git clone https://github.com/brettc/partitionfinder.git
cd partitionfinder
sudo sed -i '1s|^|#!/usr/bin/env python\n|' /usr/local/partitionfinder/PartitionFinder.py
sudo chmod +x /usr/local/partitionfinder/PartitionFinder.py
sudo ln -s /usr/local/partitionfinder/PartitionFinder.py /usr/bin/partitionfinder