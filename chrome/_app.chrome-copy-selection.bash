#!/bin/bash
# This successfully copies the highlighted text to the clipboard
chrometext() {
	# Assign the clipboard to a variable
	# This avoids overwriting it, as "get copy" is the only way I know to get it out of chrome
	pbrevert=$(pbpaste)
	# Copy selected text in chrome 
    $(osascript <<EOT
    	tell application "Google Chrome" to get copy selection of active tab of window 1
EOT)
	pbcapture="$(pbpaste)"

	# Revert clipboard
	echo $pbrevert | pbcopy

	echo $pbcapture
}

chrometext