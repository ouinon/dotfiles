#!/bin/bash
finder_path () {
    osascript -e 'tell application "Finder"'\
        -e "if (${1-1} <= (count Finder windows)) then"\
        -e "get POSIX path of (target of window ${1-1} as alias)"\
        -e 'else' \
        -e 'get POSIX path of (desktop as alias)'\
        -e 'end if' \
        -e 'end tell';
}

args="--command=newWindow"

fname=$1

if [[ -z $fname ]]
then
	args="$args --command=new"
fi

path="$(finder_path)$fname"

/usr/local/bin/sb "$path" "$args"