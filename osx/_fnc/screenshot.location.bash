#!/bin/bash
# @BUG There's something wrong here, the function seems to fire when bash activity is occuring
ss_location(){	
	e="defaults write com.apple.screencapture location \"${PWD}\";killall SystemUIServer"
	echo $e
}

ss_reset(){	
	e="defaults write com.apple.screencapture location \"~/Desktop/\";killall SystemUIServer"
	echo $e
}


export -f ss_reset
export -f ss_location