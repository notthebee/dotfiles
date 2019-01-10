#! /bin/sh
. $HOME/.colors.sh
pkill dunst
dunst -conf $HOME/.config/dunst/config \
	-lb "$bgeven" \
	-nb "$foreground" \
	-cb "$darkred" \
	-lf "$darkgrey" \
	-cf "$background" \
	-nf "$bgeven" &
