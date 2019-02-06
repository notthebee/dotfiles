#! /bin/sh
# notthebee's .xinitrc

$HOME/.local/bin/switchoutputs &
xrdb -merge ~/.Xresources
parcellite &
setxkbmap de,ru -option caps:escape -option grp:shifts_toggle
xset r rate 280 35
feh --bg-fill $HOME/.wp.jpg
unclutter --timeout 1 &
#udiskie -A &
polybar example -r &
xautolock -corners --00 -time 10 -locker slock -notify 5 &
compton &
$HOME/.config/dunst/wrapper.sh &
sxhkd &
$HOME/.config/bspwm/scripts/lockutils &
exec bspwm
#exec i3
