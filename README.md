# dotfiles by jteng2127

## Install

clone this repo into `~/.dotfiles`

```bash
git clone git@github.com:jteng2127/dotfiles.git
```

install stow

on Ubuntu

```bash
sudo apt-get install -y stow
```

on MacOS

```bash
brew install stow
```

and install module you want by

```bash
cd ~/.dotfiles
stow --no-folding <module name>
```

all modules are folder names in `~/.dotfiles`

## Uninstall

```bash
cd ~/.dotfiles
stow -D <module name>
```
