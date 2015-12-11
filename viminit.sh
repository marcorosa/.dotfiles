#!/bin/bash

# Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ./vim/.vim/bundle/Vundle.vim

# Install other plugins
vim +PluginInstall +qall
# YCM
./vim/.vim/bundle/YouCompleteMe/install.py

