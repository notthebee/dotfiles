#! /bin/sh
source $HOME/.colors.sh
pkill dunst
dunst -conf $HOME/.config/dunst/config \
	-lb "$bgeven" \
	-nb "$foreground" \
	-cb "$lightgrey" \
	-lf "$darkgrey" \
	-cf "$background" \
	-nf "$bgeven" &
