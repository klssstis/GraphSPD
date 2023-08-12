#!/bin/bash

# install pip
sudo apt-get install -y python3-pip

# install python modules
pip3 install numpy pandas

# install pytorch
pip3 install torch==1.11.0+cpu torchvision==0.12.0+cpu torchaudio==0.11.0 --extra-index-url https://download.pytorch.org/whl/cpu

# install clang
pip3 install clang==6.0.0.2
sudo apt-get install -y clang
sudo ln -s /usr/lib/x86_64-linux-gnu/libclang-*.so.1 /usr/lib/x86_64-linux-gnu/libclang.so

# install pytorch-geometric
pip3 install torch-sparse==0.6.14
pip3 install torch-scatter torch-cluster torch-spline-conv -f https://data.pyg.org/whl/torch-1.11.0+cpu.html
pip3 install torch-geometric==2.0.4

# install java 8
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y openjdk-8-jre
