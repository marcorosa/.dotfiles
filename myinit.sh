#!/bin/bash

sudo apt-get update
sudo apt-get install -y autojump htop ipython silversearcher-ag unrar vlc vim

# Shell:
sudo apt-get install -y zsh git-core
# zsh autocompletion
git clone git://github.com/tarruda/zsh-autosuggestions ./zsh/.zsh/zsh-autosuggestions
# zsh highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git ./zsh/.zsh/zsh-syntax-highlighting

# Graphics:
sudo apt-get install -y compizconfig-settings-manager compiz-plugins-extra stow tmux 

# VPN:
sudo apt-get install -y sshuttle
#sudo apt-get install ipython3

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

# Github
sudo apt-get install -y ruby
sudo apt-get install -y ruby-dev
sudo apt-get install -y rubygems-integration
sudo gem install git-up 
