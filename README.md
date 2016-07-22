## Installation

Copy the following into your `.bash_profile`, I make no apologies for doing this manually.

    export DIR_DOTFILES=$HOME/dotfiles
    source $DIR_DOTFILES/.dotfiles

This sourced filed in-turn [source](http://ss64.com/bash/source.html) all `.bash` files in the dotfiles directory and sub-directories except those beginning with an underscore ("_"). This allows for a descriptive directory structure.

The dotfiles are intended for use in OSX though most will work on Linux.

## Notes

#### Manual

If install __homebrew__ it's a good idea to change the path order in this file:

`/etc/paths`

## Recommendations

#### [ColorTools](https://github.com/ramonpoca/ColorTools)

[Ramon Poca](http://ramonpoca.github.io/) provides an invaluable means of creating color palettes for OSX.

#### [Bashmarks](https://github.com/huyng/bashmarks)

[Huy Nguyen's](http://www.huyng.com) bashmarks provide a simple means of navigating directories in bash. Best solution I've seen.

#### [Appify](https://gist.github.com/mathiasbynens/674099)

[Mathias Bynens](https://gist.github.com/mathiasbynens) - appify script turns bash files into __.app__ files

_NB. Some backups are included in "./_bak"_.