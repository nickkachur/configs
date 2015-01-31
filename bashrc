# ~/.bashrc: executed by bash(1) for interactive shells.
# Note: commands indented one (or more) spaces do are not placed in history

# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# Don't put duplicate lines in the history.
 export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

### Aliases
# Default to human readable figures
 alias df='df -h'
 alias du='du -h'

# Pagers
 alias less='less -r'                          # raw control characters
 alias o='less'                                # make less easier to call

# Grep
 alias grep='grep --color'                     # show differences in colour
 alias egrep='egrep --color=auto'              # show differences in colour
 alias fgrep='fgrep --color=auto'              # show differences in colour


# Some shortcuts for different directory listings
# GNU and Darwin/BSD ls use different options for colored output
 if [[ "$(uname)" == "Darwin" ]]; then
     alias ls='ls -hFG'              # classify files in color (BSD/Darwin)
 else
     alias ls='ls -hF --color=tty'   # ditto (assume GNU if not Darwin)
 fi

 alias l='ls'                        # short-shortcut to ls
 alias ll='ls -l'                    # long list
 alias la='ls -A'                    # all but . and ..
 alias ..='cd ..'                    # easy movement

# If terminal is xterm, force it to use 256 colors
 if [ "$TERM" == "xterm" ]; then
     export TERM=xterm-256color
 fi

##################################################
# SHELL FUNCTIONS 
##################################################

##################################################
# List all private functions, all of which begin
# with double (or triple) underscores
##################################################
__list_my_functions() {
    if [ "$1" != "-a" ]; then
        # Get rid of non-personal private functions (e.g. git aliases)
        set | grep '^__[^_]' | grep -v "__ " | grep -v "^__git" | grep -v "__grub"
    else
        set | grep '^__[^_]'
    fi
}


##################################################
# Move up from a directory to any of its
# its direct ancestors & completion function
##################################################
__upto() {
    if [ -z $1 ]; then
        echo "Usage: __upto [directory]"
        return 1
    fi
    local upto=$1
    cd "${PWD/\/$upto\/*//$upto}"
}

# Completion function
___upto_complete() {
    local cur=${COMP_WORDS[COMP_CWORD]}
    d=${PWD//\//\ }
    COMPREPLY=( $( compgen -W "$d" -- $cur ) )
}
complete -F ___upto_complete __upto

##################################################
# Return the platform of our coreutils
##################################################
__get_coreutils_platform() {
    local ls_version="$(ls --version 2>/dev/null)"
    if [[ "$ls_version" == *"GNU coreutils"* ]]; then
        echo gnu
    else
        echo bsd
    fi
}

