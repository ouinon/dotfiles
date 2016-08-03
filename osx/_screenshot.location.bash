#!/bin/bash
# @BUG There's something wrong here, the function seems to fire when bash activity is occuring
ss-location(){	
	defaults write com.apple.screencapture location "${PWD}";killall SystemUIServer
}
export -f ss-location