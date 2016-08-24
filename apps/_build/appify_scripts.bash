if [[ $(type -t appify) != 'file' ]]
then
	echo 'appify is not installed'; exit
fi

cd $HOME/dotfiles/apps

appslocation="$HOME/dotfiles/";
appstobuild=$(find "$appslocation" -path "*/app.*")


for i in $appstobuild
do
	fileName=${i##*/}

    appName=${fileName/app./} # Remove app. from the front
    appName=${appName%.bash} # Remove .bash from the end
    appName=${appName//./-} # Replace . with - 
    
    appPath=$appslocation/$appName.app
    echo $appPath $i
    # echo $appPath


    # Remove the old apps 
    if [[ -d $appPath ]]
    then 
    	echo $appPath
    	rm -rf $appPath
	fi
	# Bulid the app
    appify $i $appName
done