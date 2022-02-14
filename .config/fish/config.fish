#!/usr/bin/fish

# Configure fish
set fish_greeting

# Environnement configuration
set -x SUDO_PROMPT "["(set_color blue)"sudo"(set_color normal)"]["(set_color green)"%p"(set_color normal)"->"(set_color yellow)"%U"(set_color normal)"] Password : "(set_color -r)"  secret "(set_color normal)

# Aliases
alias config='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias dc='docker-compose'
alias ll='ls -Alhv --group-directories-first'
alias gs='git status'
alias gl='git lg'
alias t='tree --dirsfirst'
alias push='git fetch'
alias push='git push'
alias pull='git pull'
