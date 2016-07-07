#!/bin/bash
ss.location(){	
	defaults write com.apple.screencapture location "${PWD}";killall SystemUIServer
}
export -f ss.location