#!/bin/bash

echo -e "\n Setting up Python3 \n"

sudo apt update && sudo apt install software-properties-common

sudo add-apt-repository ppa:deadsnakes/ppa

sudo apt install python3
sudo apt install python3-pip

echo -e "\n Succssflly installd $(python3 --version) & $(pip3 --version)\n"
