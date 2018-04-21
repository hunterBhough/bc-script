#!/bin/bash

#prep
sudo apt-get update && sudo apt-get upgrade
#base packages
sudo apt-get install -y git
sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo apt-get update
sudo apt-get install ethereum

#C and golang compilers
sudo apt-get install -y build-essential golang
mkdir go && cd go
mkdir -p src/github.com/ethereum pkg bin && cd src/github.com/ethereum
git clone https://github.com/ethereum/go-ethereum
cd go-ethereum && make geth

curl -sL https://deb.nodesource.com/setup_8.x | sudo -E bash -
sudo apt-get install -y nodejs

mkdir ~/storj
cd ~/storj
npm install storj-lib --save
