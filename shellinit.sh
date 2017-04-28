#!/bin/bash

# Shell:
sudo apt-get install -y zsh git-core

# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Custom themes
cp -r themes $ZSH/custom/

# Plugins
# zsh autocompletion
git clone git://github.com/tarruda/zsh-autosuggestions $ZSH/custom/plugins/zsh-autosuggestions
# zsh highlighting
git clone git://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH/custom/plugins/zsh-syntax-highlighting

