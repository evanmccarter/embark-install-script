#!/bin/bash

#basics
#TODO: ensure apt/aptitude auto-confirm installations
sudo apt-get update; sudo apt-get install aptitude
sudo aptitude update; sudo aptitude upgrade

#install git
sudo aptitude install git

#npm, n, node
sudo aptitude install npm
sudo npm install -g n
sudo n 0.12.2
#TODO: switch to version 0.12.2 in n

#install geth
sudo aptitude install software-properties-common
sudo add-apt-repository -y ppa:ethereum/ethereum
sudo aptitude update
sudo aptitude install ethereum
geth account new
sudo geth account new
#TODO: ensure geth can get passwords / confirmations

#install CPP-ethereum
sudo add-apt-repository ppa:ethereum/ethereum-qt
sudo add-apt-repository ppa:ethereum/ethereum
sudo aptitude update
sudo aptitude install cpp-ethereum


#install embark
sudo npm install -g embark-framework grunt-cli
