cleandesktop(){

	datetoday=$(date +"%Y-%m-%d")
	desktoppath="$HOME/Desktop"
	datepath="$HOME/Desktop/$datetoday"
	if [[ ! -d "$datepath" ]]
	then
		mkdir $datepath
		find $desktoppath -depth 1 -not -regex '.*\/[0-9]\{4\}\-[0-9]\{2\}\-[0-9]\{2\}' -print0 | xargs -0 -J % mv -v % $datepath
	fi

}
export -f cleandesktop=cleandesktop
# Needs piping

# TODO Select the previous three days and move all other directories matching the regex into .Trash
# date -v+{1,2,3}d

# find . -type d -depth 1 -not -regex '^\.\/[0-9]\{4\}\-[0-9]\{2\}\-[0-9]\{2\}' -exec mv -t $HOME/Desktop/2016-05-03/ {} \;

# -print0 | xargs -0 -J % mv % target_location

# PROBLEM New will get packed off with the new folder name the first time that the 
# Possibly if it wasn't modified that day it's something that should be put in the folder