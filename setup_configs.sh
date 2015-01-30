#!/bin/bash


# Setup Vundle for Vim
#vim -u ~/.vim/bundles.vim +BundleInstall +q

# Setup symlinks for home directory (if required)


# Utility function to link each config file
link_config_file() {
    local filename=$1

    if [[ exists "~/.$filename" ]]; then
        echo -n "$filename already exists, overwrite? (y/n) "
        read user_input
    fi

    if [[ "user_input" == "y" ]]; then
        mv "~/.$filename" "~/.$filename.bak"
        echo "Created backup file: "~/.$filename.bak"
    else
        echo "Skipping ~/.$filename"
    fi
}





        
