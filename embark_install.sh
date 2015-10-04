#!/bin/bash

#basics
#TODO: ensure apt/aptitude auto-confirm installations
sudo apt-get update; sudo apt-get install -y aptitude
sudo aptitude update; sudo aptitude -y upgrade

#install git
sudo aptitude install -y git

#npm, n, node
sudo aptitude install -y npm
sudo npm install -g n
sudo n 0.12.2
sudo n 0.12.2

#install geth
sudo aptitude install -y software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo aptitude update
sudo aptitude install -y ethereum
echo -e "y\nexit\n" | geth console
echo -e "personal.newAccount(\"123\")\nexit\n" | geth console

#install CPP-ethereum
sudo add-apt-repository -y ppa:ethereum/ethereum-qt
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo aptitude update
sudo aptitude install -y cpp-ethereum


#install embark
sudo npm install -g embark-framework grunt-cli

