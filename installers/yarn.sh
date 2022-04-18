#!/bin/bash

echo -e "\n Preparing \n"

curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

echo -e "\n Insatlling ...\n"

sudo apt update && sudo apt install yarn

echo - "\n Configuring ENVIRONMENT PATH\n"
echo -e "
## PATH - Yarn
export PATH=$PATH:$(yarn global bin)" >> ~/.bashrc

echo -e "\n Installd Yarn@$(yarn --version)"

