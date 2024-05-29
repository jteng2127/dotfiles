#!/bin/bash

# zsh is already installed on macOS

# stow
brew install stow

# fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

# zoxide
brew install zoxide
