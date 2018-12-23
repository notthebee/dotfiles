#! /bin/bash
ws1=$(cat $HOME/.config/i3/config | grep "set \$ws4" | grep -oP '"\K[^"\047]+(?=["\047])')
i3-msg "workspace $ws1; append_layout $HOME/.config/i3/layouts/music.json" &&
urxvt -name "cmus" -e "cmus" &
urxvt -name "vis" -e "vis" &
urxvt -name "pyradio" -e "pyradio" &
urxvt -name "htop" -e "htop" &
