#!/bin/bash

# Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ./vim/.vim/bundle/Vundle.vim

# Install other plugins
vim +PluginInstall +qall
# YCM
./vim/.vim/bundle/YouCompleteMe/install.py

# Syntax checkers
pip3 install flake8
npm install -g eslint   # js
npm install -g solhint  # solidity

# Syntax fixers
pip3 install autopep8
pip3 install isort
pip3 install yapf
