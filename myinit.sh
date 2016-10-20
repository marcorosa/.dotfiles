#!/bin/bash

sudo apt-get update
sudo apt-get install -y autojump htop silversearcher-ag
sudo apt-get install -y vim vim-gtk
sudo apt-get install -y unrar vlc

# Python utils:
sudo apt-get install -y python-pip
sudo apt-get install -y ipython
sudo pip install sshuttle    # VPN
#sudo apt-get install ipython3

# Shell:
sudo apt-get install -y zsh git-core
# zsh autocompletion
git clone git://github.com/tarruda/zsh-autosuggestions ./zsh/.zsh/zsh-autosuggestions
# zsh highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ./zsh/.zsh/zsh-syntax-highlighting

# Graphics:
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra stow tmux 

# Add PPA
sudo apt-get install -y software-properties-common

# notepadqq:
sudo add-apt-repository ppa:notepadqq-team/notepadqq
sudo apt-get update
sudo apt-get install -y notepadqq

# misc:
sudo apt-get install -y cowsay fortune cmatrix
sudo apt-get install -y build-essential cmake
sudo apt-get install -y python-dev

# Coding
sudo apt-get install -y build-essential cmake
sudo apt-get install -y python-dev

# Git-up
sudo pip install git-up
