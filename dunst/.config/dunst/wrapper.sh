#! /bin/sh
. $HOME/.local/bin/getcolors
pkill dunst
dunst -conf $HOME/.config/dunst/config \
	-lb "$bgeven" \
	-nb "$foreground" \
	-cb "$darkred" \
	-lf "$darkgrey" \
	-cf "$background" \
	-nf "$bgeven" &
