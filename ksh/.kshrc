export EDITOR=nvim
export PATH=$HOME/.local/bin:$PATH
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
export CLICOLOR=1
HISTFILE=$HOME/.ksh_history
HISTSIZE=20000

alias ls="ls --color=auto -FHh"
alias ll='ls -l'
alias la='ls -lA'
alias ..='cd ..'
alias ...='cd ...'
alias mkdir='mkdir -p'
alias df='df -h'
alias du='du -ch'
alias kshconf="nvim ~/.kshrc"
alias i3conf="nvim ~/.config/i3/config"
alias hlconf="nvim ~/.config/herbstluftwm/autostart"
alias bspconf="nvim ~/.config/bspwm/bspwmrc"
alias sxhconf="nvim ~/.config/sxhkd/sxhkdrc"
alias polyconf="nvim ~/.config/polybar/config"
alias vimconf="nvim ~/.vimrc"
alias pass="kpcli -kdb ~/Documents/pass.kdbx"
alias doas='doas '
alias n='nnn $HOME/Documents/Notes'
alias em='doas emerge -v'
alias vim='nvim'
alias ipp='curl ipinfo.io/ip'
PS1="$(echo -e "\033[34m~ \033[00m")"

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then exec startx -- vt1; fi

set -o emacs

if [[ ! $TERM = screen ]]; then
    exec tmux
fi
