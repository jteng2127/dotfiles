# dotfiles by jteng2127

## Install

Install git, and clone this repo into `~/.dotfiles`

```bash
git clone https://github.com/jteng2127/dotfiles.git ~/.dotfiles
```

setup script

```bash
chmod -R +x ~/.dotfiles/scripts
cd ~/.dotfiles/scripts/<your-package-manager>
./setup.sh
# if you need to install nerd font
./font.sh
```

and install module(folder name) you want by

```bash
cd ~/.dotfiles
stow --no-folding <module name>
```

## Uninstall

```bash
cd ~/.dotfiles
stow -D <module name>
```
