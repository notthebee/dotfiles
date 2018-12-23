#! /bin/bash
# notthebee's media keys script

volume="$(amixer sget Master | grep 'Left:' | awk -F'[][]' '{ print $2 }')"

function cmus() {
	cmus-remote --$1
}
function notify() {
	dunstify --replace=69 -t 1500 -u LOW "$1"
}

function volume () {
	case $1 in
	change)
	notify "🔊 volume $volume"
	;;
	mute)
	notify "🔇 sound muted"
	;;
	unmute)
	notify "🔊 sound unmuted"
	;;
	esac
}

function mixer() {
	amixer -D pulse -q sset Master $1	
}
	
case $1 in 
	up) #volume
	mixer 3%+
	volume change
	exit
        ;;
	down)
	mixer 3%-
	volume change
	exit
        ;;
    	mute)
	mixer toggle
	if [[ $(amixer sget Master | grep "\[off\]") ]]; then
		volume mute
	else
		volume unmute
	fi
	exit
        ;;
	pause) #player
	cmus pause
	exit
	;;
	next)
	cmus next
	exit
	;;
	prev)
	cmus prev
	exit
	;;
esac
