#! /bin/sh
pkill dunst
dunst -conf $HOME/.config/dunst/config \
	-lb "#4C4C72" \
	-nb "#A8A8A8" \
	-cb "#A8A8A8" \
	-lf "#FFFFFF" \
	-cf "#111111" \
	-nf "#111111" &
