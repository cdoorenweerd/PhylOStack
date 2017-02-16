#!/bin/sh
#
# This simple script will execute all the installation scripts

bash /usr/local/PhylOStack/bamm.sh
bash /usr/local/PhylOStack/beast_beagle_phyml.sh
bash /usr/local/PhylOStack/exabayes.sh
bash /usr/local/PhylOStack/mafft.sh
bash /usr/local/PhylOStack/miniconda_ete3_partitionfinder.sh
bash /usr/local/PhylOStack/p4.sh
bash /usr/local/PhylOStack/raxml_rnr.sh
bash /usr/local/PhylOStack/r_dendextend_bammtools.sh
bash /usr/local/PhylOStack/structure.sh
sudo reboot
