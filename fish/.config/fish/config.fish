#! /bin/sh
export EDITOR=nvim || export EDITOR=vim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source $HOME/.config/fish/shortcuts.fish
source $HOME/.config/fish/colors.fish
set -gx PATH $HOME/.local/bin /usr/local/bin /opt/chromium /opt/android-sdk/platform-tools $PATH

alias v=$EDITOR
alias ls='exa'
alias la='exa -la'
alias df='df -h'
alias du='du -ch'
alias pass="kpcli -kdb ~/Documents/pass.kdbx"
alias ipp='curl ipinfo.io/ip'
alias sudo='sudo '
alias playlist-dl="youtube-dl -cio '%(autonumber)s-%(title)s.%(ext)s'"
alias yt='youtube-dl'
alias ytv='yt -f bestvideo'
alias yta='yt -f bestaudio'
