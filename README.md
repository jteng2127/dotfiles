# dotfiles by jteng2127

## Install

Install git, and clone this repo into `~/.dotfiles`

```bash
git clone https://github.com/jteng2127/dotfiles.git ~/.dotfiles
```

scripts only support brew now

### zsh

```bash
cd ~/.dotfiles
./scripts/zsh/setup-brew.sh
# you may need to input your password
stow --no-folding zsh

# open zsh to continue install plugins
zsh

# if you need to install nerd font
./scripts/zsh/setup_nerd_font.sh
```

### miniconda

```bash
cd ~/.dotfiles
stow --no-folding miniconda
./scripts/miniconda/setup-macos-arm64.sh

# install mps-pytorch (for macos silicon)
./scripts/miniconda/install-mps-pytorch.sh
```

## Uninstall

```bash
cd ~/.dotfiles
stow -D <module name>
```
