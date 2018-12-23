#! /bin/bash
ws=$(cat $HOME/.config/i3/config | grep "set \$ws3" | grep -oP '"\K[^"\047]+(?=["\047])')
i3-msg "workspace $ws; append_layout $HOME/.config/i3/layouts/chat.json" &&
telegram-desktop &
st -n "weechat" -e "weechat" &
st -n "mutt" -e "neomutt" &
