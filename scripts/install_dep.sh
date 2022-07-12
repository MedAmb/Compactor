#!/bin/bash

git clone https://github.com/gabime/spdlog.git
cd spdlog 
cmake -Bbuild 
cmake --build build -- -j16
sudo cmake --build build --target install
cd .. && rm -rf spdlog
git clone https://github.com/nlohmann/json.git
cd json
cmake -Bbuild 
sudo cmake --build build --target install
cd .. && rm -rf json
wget -O boost_1_71_0.tar.gz https://sourceforge.net/projects/boost/files/boost/1.71.0/boost_1_71_0.tar.gz/download
tar xzvf boost_1_71_0.tar.gz
rm boost_1_71_0.tar.gz
cd boost_1_71_0/
sudo apt-get update
sudo apt-get install build-essential g++ python-dev autotools-dev libicu-dev libbz2-dev libboost-all-dev
${PWD}/bootstrap.sh --prefix=/usr/
${PWD}/b2
sudo ${PWD}/b2 install
cd ..
rm -rf boost_1_71_0
git clone https://github.com/google/googletest.git
cd googletest
cmake -DBUILD_SHARED_LIBS=ON -Bbuild
cmake --build build -- -j16
sudo cmake --build build --target install
cd ..
rm -rf googletest
