#!/bin/bash

# Setup Vundle for Vim
vim -u ~/.vim/bundles.vim +BundleInstall +q

# Setup symlinks for home directory (if required)

# Check for existing configs
# Ask for overwrite/save/etc.
# If save, save them to .old_configs/<file>.old
# Create symlinks for conky, vim, bash, etc.
