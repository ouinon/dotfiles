# Installation

Copy the following into your `.bash_profile`, I make no apologies for doing this manually.

    # Where you do your development
    export DIR_WWW=$HOME/Sites

    # Where you do your development
    export DIR_DOTFILES=$HOME/dotfiles    

    # source function dependencies first
    source $(find $HOME/dotfiles -path "*/_fnc/*")
    # source all other files that aren't private (_*)
    source $(find $HOME/dotfiles -name "*.bash" -not -path "*/_*")

    # 'sb' should point to the sublime binary somewhere in your $PATH
    export EDITOR='sb -w'

This will [source](http://ss64.com/bash/source.html) all `.bash` files in the dotfiles directory and sub-directories except those beginning with an underscore ("_") (including the _bak directory). This allows for a descriptive directory structure.

The dotfiles are intended for use in OSX though most will work on Linux.

# Recommendations

_Unless indicated, no dotfiles require the installation of the following. As a precaution, backups of some have been included in "_bak"_.

### Bashmarks

[Huy Nguyen's](http://www.huyng.com) bashmarks provide a simple means of navigating directories in bash. Best solution I've seen.

https://github.com/huyng/bashmarks

### Appify

[Mathias Bynens](https://gist.github.com/mathiasbynens) appify script turns bash files into __.app__ files