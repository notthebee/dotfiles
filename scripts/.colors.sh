#! /bin/sh
getColors() {
	xrdb -q | grep "*.$1:" | head -n1 | cut -f 2
}
background="$(getColors background)"
bgeven="$(getColors background-even)"
foreground="$(getColors foreground)"
cursor="$(getColors foreground)"

darkgrey="$(getColors color8)"
darkred="$(getColors color9)"

lightgrey="$(getColors color1)"
