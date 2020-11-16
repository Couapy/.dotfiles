#!/bin/bash

# Install packages
pacman -S --needed - < $HOME/.packages/pacman-list.txt
yay -S --needed - < $HOME/.packages/pacman-list.txt
flatpak install flathub com.spotify.Client

# Create user dirs
source $HOME/.config/user-dirs.dirs
mkdir -p $XDG_DESKTOP_DIR
mkdir -p $XDG_DOWNLOAD_DIR
mkdir -p $XDG_TEMPLATES_DIR
mkdir -p $XDG_PUBLICSHARE_DIR
mkdir -p $XDG_DOCUMENTS_DIR
mkdir -p $XDG_MUSIC_DIR
mkdir -p $XDG_PICTURE_DIR
mkdir -p $XDG_VIDEOS_DIR

# configure fish
curl -L https://get.oh-my.fish | fish
omf install bobthefish
echo "alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> .config/fish/conf.d/omf.fish
echo "alias ll='ls -Alhv --group-directories-first'" >> .config/fish/conf.d/omf.fish
echo "set VIRTUAL_ENV_DISABLE_PROMPT 1" >> .config/fish/conf.d/omf.fish
echo "set theme_color_scheme nord" >> .config/fish/conf.d/omf.fish
