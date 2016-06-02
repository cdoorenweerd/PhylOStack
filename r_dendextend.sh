#!/bin/sh
#
# Installation script for latest version of R on Linux Ubuntu 14.04
# R interface executable: R
# R script executable: Rscript
# https://www.digitalocean.com/community/tutorials/how-to-set-up-r-on-ubuntu-14-04

# dependencies
sudo apt-get -y update
sudo apt-get -y install libcurl4-gnutls-dev libxml2-dev libssl-dev

# R
sudo sh -c 'echo "deb http://cran.rstudio.com/bin/linux/ubuntu trusty/" >> /etc/apt/sources.list'
gpg --keyserver keyserver.ubuntu.com --recv-key E084DAB9
gpg -a --export E084DAB9 | sudo apt-key add -
sudo apt-get -y install r-base

# R packages
sudo su - -c "R -e \"install.packages('dendextend', repos = 'http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('dendextendRcpp', repos = 'http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('colorspace', repos = 'http://cran.rstudio.com/')\""
sudo su - -c "R -e \"install.packages('ape', repos = 'http://cran.rstudio.com/')\""