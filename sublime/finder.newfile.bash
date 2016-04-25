#!/bin/bash
sb_fn() {
	local args
	local fname=$1
	
	if [[ -z $fname ]]
	then
		args='--command=new'
	fi

	path="$(finder_path)$fname"
    
    /usr/local/bin/sb $path $args
}

export -f sb_fn