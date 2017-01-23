Latest release: v1.4 - [version history](https://github.com/cdoorenweerd/PhylOStack/releases)

With the PhylOStack a suite of phylogenetic software is easily installed using a series of installation scripts tailored for Ubuntu 14.04. Cookbook instructions for using the software cover three basic steps: preparing input data, running an analysis and obtaining the output. The instructions are written for the Naturalis [OpenStack](https://www.openstack.org) cloud environment but should work in any cloud environment with AVX compatible hardware configuration.

Installation
============
Download and unpack or clone the repository and execute the install_all.sh script with:

    bash /path/to/PhylOStack/install_all.sh

If this confuses you, try [these instructions](https://github.com/cdoorenweerd/PhylOStack/wiki/Installing-a-PhyloStack).


Cookbook instructions
=====================

- Create alignments with [MAFFT](https://github.com/cdoorenweerd/PhylOStack/wiki/MAFFT-on-OpenStack)
- Determine the right partitioning scheme and evolutionary model with [PartitionFinder](https://github.com/cdoorenweerd/PhylOStack/wiki/PartitionFinder-on-OpenStack)
- Bayesian inference of topologies with [Exabayes](https://github.com/cdoorenweerd/PhylOStack/wiki/Exabayes-on-OpenStack)
- Maximum likelihood estimations of topologies and rogue taxa pruning with [RAxML and RogueNaRok](https://github.com/cdoorenweerd/PhylOStack/wiki/RAxML-on-OpenStack)
- Compare topologies with [Dendextend](https://github.com/cdoorenweerd/PhylOStack/wiki/Dendextend-on-OpenStack)
- Combine support values from two trees using the [P4 combine support values script](https://github.com/cdoorenweerd/PhylOStack/wiki/P4_combine-on-OpenStack)
- Collapse nodes in a tree below a set support value using the [P4 collapse script](https://github.com/cdoorenweerd/PhylOStack/wiki/P4_collapse-on-OpenStack)
- Divergence time analyses with [BEAST](https://github.com/cdoorenweerd/PhylOStack/wiki/BEAST-on-OpenStack)
- Divergence time analyses with [PhyTime](https://github.com/cdoorenweerd/PhylOStack/wiki/Phytime-on-OpenStack)
- Bayesian diversification analyses with [BAMM](https://github.com/cdoorenweerd/PhylOStack/wiki/BAMM-on-OpenStack)
- Combine multiple analyses in a single [pipeline](https://github.com/cdoorenweerd/PhylOStack/wiki/Pipelines)


References: software websites
=============================

Python based
------------

- [Miniconda2](https://www.continuum.io/why-anaconda) ~1.6 GB
- [ETE3 toolkit](http://etetoolkit.org) ~100 MB
- [PartitionFinder v2](http://www.robertlanfear.com/partitionfinder/) ~1 GB
- [ipyrad v0.5.15](http://ipyrad.readthedocs.io/)
- [P4 v1.2](http://p4.nhm.ac.uk/index.html) ~200 MB


R based
-------

- [R](https://www.r-project.org/) ~300 MB
- [R Dendextend package](https://github.com/talgalili/dendextend)
- [R BAMMtools package](http://bamm-project.org)


C++ or other languages
----------------------

- [RAxML v8 AVX2 PTHREADS](http://sco.h-its.org/exelixis/web/software/raxml/index.html) ~80 MB
- [MAFFT v7.273](http://mafft.cbrc.jp/alignment/software/) ~10 MB
- [Exabayes v1.4.1 AVX open-MPI](http://sco.h-its.org/exelixis/web/software/exabayes/index.html) ~200 MB
- [RogueNaRok v1.0](http://sco.h-its.org/exelixis/web/software/roguenarok/roguenarok.html) ~20 MB
- [BEAST v2.3.2](http://beast2.org) ~600 MB
- [PhyML v2 20120412-2](http://www.atgc-montpellier.fr/phyml/) ~20 MB
- [BAMM v2.5](http://bamm-project.org) ~360 MB
