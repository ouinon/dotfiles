- You can't seem to reference other apps in files, even if the files are within your path eg:

`appify --help | pbcopy`

Didn't work as an app.

Take a look at the two printenv files in this directory to compare them

# export

export will only allow you to access variables that were exported within the `dotfiles` directory, luckily this isn't the same for 

# inside an appify bash ".app"

You can use this `if` to determine what to do with a call to an app program,  incase you want to build an app from a script you'll also be using in bash.

    if [[ -z $TERM_PROGRAM ]]
    then
    echo "app call" | pbcopy
    else
    echo "bash" | pbcopy
    fi

# Read a file into a string

echo $(<test.html)
echo "$(<test.html)"