#! /bin/sh
getColors() {
	xrdb -q | grep "*.$1:" | head -n1 | cut -f 2
}
background="$(getColors background)"
bgeven="$(getColors background-even)"
foreground="$(getColors foreground)"
cursor="$(getColors foreground)"

black="$(getColors color0)"
darkgrey="$(getColors color8)"

darkred="$(getColors color1)"
darkred="$(getColors color9)"

lightgrey="$(getColors color7)"
white="$(getColors color15)"
