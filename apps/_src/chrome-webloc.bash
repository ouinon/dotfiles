#!/bin/bash
chromeurl() {
    url=$(osascript <<EOT
        tell application "Google Chrome" to return URL of active tab of front window
EOT)
echo $url
}

chrometitle() {
    title=$(osascript <<EOT
        tell application "Google Chrome" to return title of active tab of front window
EOT)
	echo $title
}

path() {
    path=$(osascript <<EOT
        tell application "Finder" to return POSIX path of (first item of (get selection as alias list) as alias)
EOT)
# Get the path of the first selected item and remove the name from the path (if present)
echo ${path%/*}
}
# @TODO When running this on the command line tee outputs to the console, I would like to suppress this (for no good reason)
tee "$(path)/$(chrometitle).webloc" <<EOF
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
	<key>URL</key>
	<string>$(chromeurl)</string>
</dict>
</plist>
EOF