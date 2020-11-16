# .dotfiles

```text
Home sweet home !
```

This repository contains my .dotfiles.

## Summary

[Screenshots](#screenshots)

[Color theming](#color-theming)

[Install](#install)

[Softwares](#softwares)

## Color theming

I used the nord color theme for customising every soft I could.

[https://www.nordtheme.com/](https://www.nordtheme.com/)

## Screenshots

![desktop-dunst](https://raw.githubusercontent.com/Couapy/.dotfiles/main/.install/screenshots/desktop-dunst.png)
![i3-gaps](https://raw.githubusercontent.com/Couapy/.dotfiles/main/.install/screenshots/i3-gaps.png)
![rofi](https://raw.githubusercontent.com/Couapy/.dotfiles/main/.install/screenshots/rofi.png)

## Install

### Create a new user

```bash
useradd -m myUser
```

### Install configurations

You may have generated a [ssh key](https://wiki.archlinux.org/index.php/SSH_keys) before this step.

```bash
ssh-keygen -t rsa -b 4096 -C "this.is.an@example.com"
eval $(ssh-agent -s)
ssh-add $HOME/.ssh/id_rsa
```

And after you can run:conf

```bash
git clone --bare git@github.com:Couapy/.dotfiles.git ~/.dotfiles
git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME checkout
```

### Install packages

You will need to install the AUR helper [yay](https://github.com/Jguer/yay#installation) first.

Then just run the script like this:

```bash
sh ~/.install/install.sh
```

## Softwares

* [bpytop](https://github.com/aristocratos/bpytop)
* [fish](https://fishshell.com/)
* [i3-gaps](https://github.com/Airblader/i3)
* [Kitty](https://sw.kovidgoyal.net/kitty/)
* [picom](https://github.com/yshui/picom)
* [polybar](https://github.com/polybar/polybar)
* [rofi](https://github.com/davatorium/rofi)
