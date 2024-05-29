#!/bin/bash

# zsh
sudo apt-get install -y zsh
chsh -s $(which zsh)

# stow
sudo apt-get install -y stow

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh