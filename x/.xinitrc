#! /bin/sh
# notthebee's .xinitrc

export QT_QPA_PLATFORMTHEME="qt5ct"
$HOME/.local/bin/switchoutputs &
xrdb -merge ~/.Xresources
parcellite &
setxkbmap de,ru -option caps:escape -option grp:shifts_toggle
xset r rate 250 35
unclutter --timeout 1 &
xautolock -corners --00 -time 10 -locker slock -notify 5 &
compton &
$HOME/.config/dunst/wrapper.sh &
sxhkd -c ~/.config/sxhkd/neutral &
wmaker
