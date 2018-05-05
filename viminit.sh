#!/bin/bash

# Vundle plugin manager
git clone https://github.com/VundleVim/Vundle.vim.git ./vim/.vim/bundle/Vundle.vim

# Install other plugins
vim +PluginInstall +qall
# YCM
./vim/.vim/bundle/YouCompleteMe/install.py

# CoVim requirements
# pip install twisted argparse service_identity

# Syntax checkers
pip install flake8
npm install -g eslint   # js
npm install -g solhint  # solidity
