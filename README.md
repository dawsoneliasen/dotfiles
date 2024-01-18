# Dawson's dotfiles
This repository contains some of my configurations for my MacOS machine.

To set up a new machine with these dotfiles:

* [Install oh-my-zsh](https://ohmyz.sh/#install)
* [Install homebrew](https://brew.sh)
* Run these commands:
```
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/dawsoneliasen/dotfiles.git tmpdotfiles
rsync --recursive --verbose --exclude '.git' tmpdotfiles/ $HOME/
rm -r tmpdotfiles
```
* Restart terminal, then run this command:
```
dotfiles config --local status.showUntrackedFiles no
```
* Install pyenv: `brew install pyenv`
* Launch vim and type :PlugInstall

Finall, in order for `vim-ale` to work, you need to make sure the `flake8` Python package is installed somewhere on `$PATH`.


---
*Thanks to Anand Iyer for his [tutorial](https://www.anand-iyer.com/blog/2018/a-simpler-way-to-manage-your-dotfiles.html) on managing dotfiles.*
