if [[ $(type -t appify) != 'file' ]]
then
	echo 'appify is not installed'; exit
fi

cd $DIR_DOTFILES/apps

appslocation="$DIR_DOTFILES/apps";
appstobuild=$(find "$appslocation/_src" -name "*.bash")

for i in $appstobuild
do
	fName=${i##*/}
	appName=${fName%.bash}
    
    appPath=$appslocation/${fName/.bash/.app}
    # Remove the old apps 
    if [[ -d $appPath ]]
    then 
    	echo $appPath;
    	rm -rf $appPath;
	fi
	# Bulid the app
    appify $i $appName
done