#!/usr/bin/env bash

#sudo apt-get update
#sudo apt-get install build-essential -y
#sudo apt-get install cmake libgmp3-dev yasm m4 python libz-dev libsodium-dev -y
#
## install mpir
#cd ../../
#wget 'http://mpir.org/mpir-3.0.0.tar.bz2'
#tar xf mpir-3.0.0.tar.bz2
#cd mpir-3.0.0
#./configure --enable-cxx
#make
#make check
#sudo make install
#

# install ntl-11.1.0
cd ~
wget http://www.shoup.net/ntl/ntl-11.1.0.tar.gz
tar -xf ntl-11.1.0.tar.gz
cd ntl-11.1.0/src
./configure CXXFLAGS=-fPIC
make -j 4

## install SPDZ-2
#cd ~/SPDZ-2/
#make
#
## install SPDZ-protocol
#cd ~ && git clone https://github.com/cryptobiu/MPCHonestMajorityForSpdz.git
#cd MPCHonestMajorityForSpdz
#cmake . && make

# install spdz-extension
#cd ~ && git clone https://github.com/cryptobiu/SPDZ-2-Extension-MpcHonestMajority.git
cd ~ && cd SPDZ-2-Extension-MpcHonestMajority
cmake . && make



