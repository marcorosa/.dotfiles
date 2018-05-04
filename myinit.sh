#!/bin/bash

sudo apt update

sudo apt install -y autojump htop silversearcher-ag
sudo apt install -y vim
sudo apt install -y stow tmux unrar
sudo apt install -y software-properties-common  # Add PPA

# Python utils:
sudo apt install -y python-dev
sudo apt install -y python-pip
pip install ipython
sudo apt install -y python3-pip
pip3 install ipython

# Coding:
pip install git-up
sudo apt install -y build-essential cmake
pip install virtualenv
sudo apt install -y ruby ruby-dev
sudo apt install -y make gcc

# Networking:
pip install sshuttle  # VPN
sudo apt install -y openvpn  # openvpn
sudo apt install -y network-manager-openvpn  # openvpn
sudo apt install -y network-manager-openvpn-gnome
sudo apt install -y network-manager-pptp  # vpn pptp
sudo apt install -y network-manager-pptp-gnome
sudo apt install -y openssh-client
#sudo apt-get install -y openssh-server  # For servers

# Markdown to slides
sudo apt install nodejs
sudo apt install npm
npm install markdown-to-slides -g

# Jekyll:
sudo gem install jekyll bundler

# Gnome
sudo apt install gnome-tweaks
sudo apt install chrome-gnome-shell

# Misc:
sudo apt install -y cowsay fortune cmatrix

# Progress bar shell
echo 'Dpkg::Progress-Fancy "1";' | sudo tee /etc/apt/apt.conf.d/99progressbar
