# Dawson's dotfiles
This repository contains some of my configurations for my MacOS machine.

Thanks to Anand Iyer for his [tutorial](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html) on managing dotfiles.

To set up a new machine with these dotfiles:

* Install oh-my-zsh
* Install homebrew
* Run these commands:
```
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/dawsoneliasen/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
```
* Install Python3
* Install vim (I prefer to use the brew installation of vim instead of the one that comes with MacOS)
* Install vim-plug
* Launch vim and type :PlugInstall
