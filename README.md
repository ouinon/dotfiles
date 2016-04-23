# Installation

To install these dot files, clone the repo include the following line in your `.bash_profile` file.

    source $(find ./dotfiles -name "*.bash" -not -name "_*");

This will [source](http://ss64.com/bash/source.html) all `.bash` files in the dotfiles directory and sub-directories except those beginning with an underscore ("_") (including the _bak directory). This allows for a descriptive directory structure.

The dotfiles are intended for use in OSX though most will work on Linux.

# Recommendations

_Unless indicated, no dotfiles require the installation of the following. As a precaution, backups of some have been included in "_bak"_.

### Bashmarks

[Huy Nguyen's](http://www.huyng.com) bashmarks provide a simple means of navigating directories in bash. Best solution I've seen.

https://github.com/huyng/bashmarks
