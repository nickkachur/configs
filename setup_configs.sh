#!/bin/bash

# Setup symlinks for home directory (if required)

main() {
    config_dir=$(dirname $0)

    for file in $(ls $config_dir); do
        if [[ "$file" == "README.md" || "$file" == "LICENSE" || "$file" == "setup_configs.sh" ]]; then
            # Skip Readme, License, and this script (;
            continue
        else
            link_config_file $file $config_dir
        fi
    done
}

# Utility function to link each config file
link_config_file() {
    local filename=$1
    local pathname=$2

    local dotfile="$HOME/.$filename"
    
    # Prompt for user input if file already exists
    # Must check for symlinks explicitly as dead symlinks don't exist
    if [[ -e "$dotfile" || -L "$dotfile"  ]]; then
        echo -n "Warning: $dotfile already exists, overwrite? (y/n) "
        read user_input
        if [[ "$user_input" == "y" || "$user_input" == "Y" ]]; then
            mv "$dotfile" "$dotfile.bak"
            echo "Info:   Created backup file: '$dotfile.bak'"
        else
            echo "Info:   Skipping '$dotfile'"
            return
        fi
    fi

    echo "Info:   Creating link for '$dotfile' -> '$pathname/$filename'"
    ln -s "$pathname/$filename" "$HOME/.$filename" 
}

main

