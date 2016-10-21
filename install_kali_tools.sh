#!/bin/bash

sudo apt-get update

# Guake terminal
sudo apt-get install -y guake

# IRC
sudo apt-get install -y irssi irssi-scripts screen openssh-server
sudo apt-get install -y hexchat

# Hex editor
sudo apt-get install -y bless

# Utilities
sudo apt-get install -y strace

# Tools for CTFs
sudo apt-get install -y pngtools
pip install pwntools
