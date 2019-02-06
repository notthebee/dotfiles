#!/bin/bash

case "$1" in
    --toggle)
        if cmus-remote -Q | grep -q 'status playing'; then
            cmus-remote -u
        else
            cmus-remote -p
        fi
        ;;
    *)
        if cmus-remote -Q | grep -q 'status playing'; then
		output=`cmus-remote -Q | grep 'title' | awk '{$1=""; $2=""; print $0}' | cut -c 3-`
		if ((${#output} > 21)); then
			echo ${output:0:21}"..."
		else
			echo $output
		fi
        fi
        ;;
esac
