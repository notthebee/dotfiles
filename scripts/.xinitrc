#! /bin/sh
# notthebee's .xinitrc

autorandr --change
autocutsel -fork
autocutsel -selection PRIMARY -fork
xrdb -merge ~/.Xresources
setxkbmap de,ru -option caps:escape -option grp:shifts_toggle
xset r rate 280 35
feh --bg-scale $HOME/.wp.jpg
unclutter --timeout 1 &
udiskie -A &
polybar example -r &
xautolock -corners --00 -time 10 -locker slock -notify 5 &
compton &
$HOME/.config/dunst/wrapper.sh &
sxhkd &
exec bspwm
