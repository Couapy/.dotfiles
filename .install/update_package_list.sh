#!/bin/bash

mkdir -p $HOME/.install/packages
pacman -Qqen > $HOME/.install/packages/core.txt
pacman -Qqem > $HOME/.install/packages/aur.txt
