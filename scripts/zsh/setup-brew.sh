#!/bin/bash

# brew is already installed on macOS
if command -v brew > /dev/null 2>&1; then
  echo "brew is already installed"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

# zsh is already installed on macOS
if command -v zsh > /dev/null 2>&1; then
  echo "zsh is already installed"
else
  brew install zsh
  command -v zsh >> /etc/shells
  sudo chsh -s $(command -v zsh) "${USER}"
fi

# for `zsh` module
brew install stow fzf zoxide
