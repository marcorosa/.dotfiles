#!/bin/bash

# Homebrew
xcode-select --install
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# iTerm2
brew cask install iterm2

# Rectangle (shortcuts for windows positioning)
brew cask install rectangle

# Stow configs
brew install stow
./autostow.sh

# Oh-my-zsh shell
brew install zsh

# Python
pip3 install --upgrade pip --user
pip3 install virtualenv
pip3 install ipython

# Utils
brew install autojump
brew install cmake
brew install gcc
brew install the_silver_searcher
