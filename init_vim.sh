#!/bin/bash

# Syntax checkers
pip3 install flake8
npm install -g eslint   # js
npm install -g solhint  # solidity

# Syntax fixers
pip3 install autopep8
pip3 install isort
pip3 install yapf

# YCM
python3 ./vim/.vim/pack/my-plugins/start/YouCompleteMe/install.py
