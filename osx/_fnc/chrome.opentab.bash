#!/bin/bash
chrometab() {
    selected=$(osascript <<EOT
        tell application "Google Chrome" to return URL of active tab of front window
EOT)
echo $selected
# @NOTE Unsure of why the following was in the file? 
# echo $selected | tr ":" "\n"
}

export -f chrometab