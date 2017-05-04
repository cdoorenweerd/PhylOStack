#!/bin/sh
#
# This simple script will execute all the installation scripts

# prevent 'unknown host' warning messages
sudo sed -ie "1 s/$/ $(hostname)/" /etc/hosts

echo "PHYLOSTACK INSTALLATION LOG" > /home/ubuntu/PhylOStack_installation.log

echo "###############################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### BAMM installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "###############################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/bamm.sh

echo "##########################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### Beast and PhyML installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "##########################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/beast_beagle_phyml.sh

echo "###################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### Exabayes installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "###################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/exabayes.sh

echo "################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### MAFFT installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/mafft.sh

echo "##############################################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### Miniconda, ETE3 and PartitionFinder installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "##############################################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/miniconda_ete3_partitionfinder.sh

echo "#############################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### P4 installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "#############################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/p4.sh

echo "###############################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### RaxML and RogueNaRok installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "###############################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/raxml_rnr.sh

echo "##########################################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### R with Dendextend and BAMMtools installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "##########################################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/r_dendextend_bammtools.sh

echo "####################################################################" > /home/ubuntu/PhylOStack_installation.log
echo "###################### Structure installation ######################" > /home/ubuntu/PhylOStack_installation.log
echo "####################################################################" > /home/ubuntu/PhylOStack_installation.log
bash /usr/local/PhylOStack/structure.sh

sudo reboot
