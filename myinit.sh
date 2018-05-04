#!/bin/bash

sudo apt update

sudo apt install -y autojump htop silversearcher-ag
sudo apt install -y vim
sudo apt install -y unrar
sudo apt install -y stow tmux
sudo apt install -y software-properties-common  # Add PPA

# Python utils:
sudo apt install -y python-pip
pip install -y ipython
sudo apt install -y python3-pip
pip3 install -y ipython

# Networking:
pip install -y sshuttle  # VPN
sudo apt install -y network-manager-openvpn  # openvpn
sudo apt install -y network-manager-openvpn-gnome
sudo apt install -y network-manager-pptp  # vpn pptp
sudo apt install -y network-manager-pptp-gnome
sudo apt install -y openssh-client
#sudo apt-get install -y openssh-server  # For servers

# Coding:
pip install git-up
sudo apt install -y build-essential cmake
sudo apt install -y python-dev
pip install virtualenv

# Markdown to slides
sudo apt install nodejs
sudo apt install npm
npm install markdown-to-slides -g

# Graphics:
sudo apt install -y compizconfig-settings-manager compiz-plugins-extra

# Jekyll:
sudo apt install -y ruby ruby-dev make gcc
sudo gem install jekyll bundler

# Misc:
sudo apt install -y cowsay fortune cmatrix

# Progress bar shell
sudo echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
