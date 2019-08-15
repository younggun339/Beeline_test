#!/bin/bash

# Building docker for the different algorithms 
echo "This may take a while..."

BASEDIR=$(pwd)

# You may remove the -q flag if you want to see the docker build status
cd $BASEDIR/Algorithms/ARBORETO
docker build -q -t arboreto:base .
echo "Docker container for ARBORETO is built and tagged as arboreto:base"


cd $BASEDIR/Algorithms/GRISLI/
docker build -q -t grisli:base .
echo "Docker container for GRISLI is built and tagged as grisli:base"


cd $BASEDIR/Algorithms/GRNVBEM/
docker build -q -t grnvbem:base .
echo "Docker container for GRNVBEM is built and tagged as  grnvbem:base"

cd $BASEDIR/Algorithms/JUMP3/
docker build -q -t jump3:base .
echo "Docker container for JUMP3 is built and tagged as  jump3:base"

cd $BASEDIR/Algorithms/LEAP/
docker build -q -t leap:base .
echo "Docker container for LEAP is built and tagged as  leap:base"

cd $BASEDIR/Algorithms/PIDC/
docker build -q -t pidc:base .
echo "Docker container for PIDC is built and tagged as pidc:base"

cd $BASEDIR/Algorithms/PNI/
docker build -q -t pni:base .
echo "Docker container for PNI is built and tagged as pni:base"

cd $BASEDIR/Algorithms/PPCOR/
docker build -q -t ppcor:base .
echo "Docker container for PPCOR is built and tagged as ppcor:base"

cd $BASEDIR/Algorithms/SCINGE/
docker build -q -t scinge:base .
echo "Docker container for SCINGE is built and tagged as scinge:base"

cd $BASEDIR/Algorithms/SCNS/
docker build -q -t scns:base .
echo "Docker container for SCNS is built and tagged as scns:base"

cd $BASEDIR/Algorithms/SCODE/
docker build -q -t scode:base .
echo "Docker container for SCODE is built and tagged as scode:base"

cd $BASEDIR/Algorithms/SCRIBE/
docker build -q -t scribe:base .
echo "Docker container for SCRIBE is built and tagged as sincerities:base"

cd $BASEDIR/Algorithms/SINCERITIES/
docker build -q -t sincerities:base .
echo "Docker container for SINCERITIES is built and tagged as sincerities:base"

cd $BASEDIR


echo "Setting up Anaconda..."
# Comment the following lines if you want to install the packages
# directly from requirements.
conda create -y --name BEELINE python=3.7.1 r=3.5.0 --file requirements.txt
conda activate BEELINE

# Install the PRROC package for computing area under PR curve
# TODO: Write the PRROC AUC function and make it BEELINE package without using rpy2

R -e "install.packages('https://cran.r-project.org/src/contrib/PRROC_1.3.1.tar.gz', type = 'source')"

