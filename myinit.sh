#!/bin/bash

sudo apt-get update

sudo apt-get install -y autojump htop silversearcher-ag
sudo apt-get install -y vim vim-gtk
sudo apt-get install -y unrar vlc
sudo apt-get install -y stow tmux
sudo apt-get install -y software-properties-common  # Add PPA

# Python utils:
sudo apt-get install -y python-pip
sudo apt-get install -y ipython
#sudo apt-get install ipython3

# Networking:
sudo pip install -y sshuttle  # VPN
sudo apt-get install -y network-manager-openvpn  # openvpn
sudo apt-get install -y network-manager-openvpn-gnome
sudo apt-get install -y network-manager-pptp  # vpn pptp
sudo apt-get install -y network-manager-pptp-gnome
sudo apt-get install -y openssh-client
#sudo apt-get install -y openssh-server  # For servers

# Shell:
sudo apt-get install -y zsh git-core
# zsh autocompletion
git clone git://github.com/tarruda/zsh-autosuggestions ./zsh/.zsh/zsh-autosuggestions
# zsh highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ./zsh/.zsh/zsh-syntax-highlighting

# Coding:
pip install git-up
sudo apt-get install -y build-essential cmake
sudo apt-get install -y python-dev
pip install virtualenv

# Graphics:
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra

# Notepadqq:
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install -y notepadqq

# Jekyll:
sudo apt-get install -y ruby ruby-dev make gcc
sudo gem install jekyll bundler

# Misc:
sudo apt-get install -y cowsay fortune cmatrix

# Progress bar shell
sudo echo 'Dpkg::Progress-Fancy "1";' > /etc/apt/apt.conf.d/99progressbar
