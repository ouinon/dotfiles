package main

import (
	"fmt"
	"os/exec"
	// "os"
)

func main() {

	// set pathList to (quoted form of POSIX path of (folder of the front window as alias))

	out, err := exec.Command("/usr/bin/osascript", "-e", `tell application "Finder" to get the POSIX path of (target of front window as alias)`).Output()

	if err != nil {
		fmt.Printf("Couldn't determine foremost window\n\t- most likely: No window is actually open in Finder\n\t- Error: %v\n", err)
		return
	}

	fmt.Println(string(out), "Output")

}

// tell application "Finder"
//     set theFiles to selection
//     set myList to {}
//     repeat with aFile in theFiles
//         copy POSIX path of (aFile as alias) to end of myList
//     end repeat
//     # Do not know how to escape a single quote in a heredoc, as a result the line beneath is a requirement
//     set Applescript's text item delimiters to "DUMMY"
//     set AppleScript's text item delimiters to ":"
//     myList as string
// end tell
