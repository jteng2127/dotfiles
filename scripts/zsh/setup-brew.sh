#!/bin/bash

# brew is already installed on macOS
if command -v brew > /dev/null 2>&1; then
  echo "brew is already installed"
else
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
  PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"
fi

# brew environment
if [ -f "/opt/homebrew/bin/brew" ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f "/usr/local/bin/brew" ]; then
  eval "$(/usr/local/bin/brew shellenv)"
elif [ -f "/home/linuxbrew/.linuxbrew/bin/brew" ]; then
  eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
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

# add locale
sudo locale-gen en_US.UTF-8

# optional tools
brew install tree # displays the directory structure of a given path in a tree-like format
brew install tldr # provides simplified summaries of commands.
brew install htop # displays an interactive process viewer.
brew install jq # parses and manipulates JSON data.
brew install tmux # manages multiple terminal sessions
