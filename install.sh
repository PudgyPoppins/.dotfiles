#!/bin/bash

BASEDIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# vim
ln -sf ${BASEDIR}/.vimrc ~/.vimrc
ln -sf ${BASEDIR}/.vim/ ~/.vim

# zsh
ln -sf ${BASEDIR}/.zshrc ~/.zshrc
ln -sf ${BASEDIR}/.oh-my-zsh/ ~/.oh-my-zsh
ln -sf ${BASEDIR}/.p10k.zsh/ ~/.p10k.zsh

#bash
ln -sf ${BASEDIR}/.bashrc ~/.bashrc
ln -sf ${BASEDIR}/.bash_profile ~/.bash_profile
ln -sf ${BASEDIR}/.profile ~/.profile

# git
ln -sf ${BASEDIR}/.gitconfig ~/.gitconfig

# misc
ln -sf ${BASEDIR}/.gnupg/ ~/.gnupg
ln -sf ${BASEDIR}/.config/ ~/.config
ln -sf ${BASEDIR}/.Xresources ~/.Xresources
ln -sf ${BASEDIR}/.ssh/ ~/.ssh
ln -sf ${BASEDIR}/.icons/ ~/.icons

#set wallpapers
ln -sf ${BASEDIR}/Pictures/ ~/Pictures
cp -f ${BASEDIR}/Pictures/Wallpapers/Wallpaper_Day.png /usr/share/backgrounds/Wallpaper_Day.png

#set lightdm greeter
cd lightdm-tiny-greeter
make
sudo make install
cd ../

#set lightdm conf
yes | cp -rf ${BASEDIR}/etc/lightdm/lightdm.conf /etc/lightdm/lightdm.conf

#move scripts to /usr/local/bin
yes | cp -af ${BASEDIR}/scripts/. /usr/local/bin
