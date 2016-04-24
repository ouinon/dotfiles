#!/bin/bash
chrometab() {
    selected=$(osascript <<EOT
        tell application "Google Chrome" to return URL of active tab of front window
EOT)
echo $selected | tr ":" "\n"
}
# echo $(plus1 8)
export -f chrometab