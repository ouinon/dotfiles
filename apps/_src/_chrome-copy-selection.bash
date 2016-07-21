#!/bin/bash
# This successfully copies the highlighted text to the clipboard
chrometext() {
    text=$(osascript <<EOT
    	tell application "Google Chrome" to get copy selection of active tab of window 1
EOT)

	echo text
	echo $text
}

chrometext