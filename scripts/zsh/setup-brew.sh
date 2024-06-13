#!/bin/bash

# brew is already installed on macOS
if command -v brew > /dev/null 2>&1; then
  echo "brew is already installed"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# zsh is already installed on macOS
if command -v zsh > /dev/null 2>&1; then
  echo "zsh is already installed"
else
  brew install zsh
  chsh -s $(which zsh)
fi

# for `zsh` module
brew install stow fzf zoxide

# optional
brew install 
