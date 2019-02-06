#! /bin/sh
export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source $HOME/.config/fish/shortcuts.fish
source $HOME/.config/fish/colors.fish
set -gx PATH  /opt/chromium $PATH

alias ls="ls --color=auto -FHh"
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias ...='cd ...'
alias df='df -h'
alias du='du -ch'
alias pass="kpcli -kdb ~/Documents/pass.kdbx"
alias n='nnn $HOME/Documents/Notes'
alias em='doas emerge -v'
alias pkg='doas vpm --color=no'
alias vim='nvim'
alias ipp='curl ipinfo.io/ip'
alias mixer='ncpamixer'
