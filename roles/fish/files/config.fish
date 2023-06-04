#! /bin/sh

switch (whoami)
case "notthebee"
  :
case "*"
  alias brew='multi_user_brew'
end

set fish_greeting
export EDITOR=nvim || export EDITOR=vim
export LANG=en_US.UTF-8
export LC_CTYPE=en_US.UTF-8
source $HOME/.config/fish/shortcuts.fish
source $HOME/.config/fish/colors.fish
set -gx PATH $HOME/.local/bin /usr/local/bin /opt/chromium /opt/android-sdk/platform-tools /opt/homebrew/bin $HOME/.cargo/bin $PATH

switch (uname)
case "*Darwin"
    alias lsblk="diskutil list"
case '*Linux'
    :
end

set -l exa_available (which exa)
if test -n "$exa_unavailable"
  set -l exa_git_unavailable (exa --version | grep '\-git')
  if test -n "$exa_git_unavailable"
    alias ls='exa --icons'
  else
    alias ls='exa --icons --git'
  end
end


alias la='ls -lha'
alias df='df -h'
alias du='du -ch'
alias ipp='curl ipinfo.io/ip'
alias yh='yt-dlp --continue --no-check-certificate --format=bestvideo+bestaudio --exec="ffmpeg -i {} -c:a copy -c:v copy {}.mkv && rm {}"'
alias yd='yt-dlp --continue --no-check-certificate --format=bestvideo+bestaudio --exec="ffmpeg -i {} -c:v prores_ks -profile:v 1 -vf fps=25/1 -pix_fmt yuv422p -c:a pcm_s16le {}.mov && rm {}"'
alias ya='yt-dlp --continue --no-check-certificate --format=bestaudio -x --audio-format wav'
alias pip_upgrade_all="pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"
