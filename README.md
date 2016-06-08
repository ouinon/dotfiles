# Installation

Copy the following into your `.bash_profile`, I make no apologies for doing this manually.

    export DIR_DOTFILES=$HOME/dotfiles
    source $DIR_DOTFILES/.dotfiles

This sourced filed in-turn [source](http://ss64.com/bash/source.html) all `.bash` files in the dotfiles directory and sub-directories except those beginning with an underscore ("_"). This allows for a descriptive directory structure.

The dotfiles are intended for use in OSX though most will work on Linux.

# Recommendations

_Unless indicated, no dotfiles require the installation of the following. As a precaution, backups of some have been included in "_bak"_.

### Bashmarks

[Huy Nguyen's](http://www.huyng.com) bashmarks provide a simple means of navigating directories in bash. Best solution I've seen.

https://github.com/huyng/bashmarks

### Appify

[Mathias Bynens](https://gist.github.com/mathiasbynens) - [appify](https://gist.github.com/mathiasbynens/674099) script turns bash files into __.app__ files

# Notes

## Manual

If install __homebrew__ you will need to change the path order in this file:

`/etc/paths`