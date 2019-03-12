#! /bin/sh
export EDITOR=nvim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source $HOME/.config/fish/shortcuts.fish
source $HOME/.config/fish/colors.fish
set -gx PATH $HOME/.local/bin /usr/local/bin /opt/chromium /opt/android-sdk/platform-tools $PATH

alias ls="ls --color=auto -FHh"
alias ll='ls -l'
alias la='ls -lA'
alias df='df -h'
alias du='du -ch'
alias pass="kpcli -kdb ~/Documents/pass.kdbx"
alias vim='nvim'
alias ipp='curl ipinfo.io/ip'
alias sudo='sudo '
alias playlist-dl="youtube-dl -cio '%(autonumber)s-%(title)s.%(ext)s'"
