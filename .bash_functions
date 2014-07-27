# My Wonderful home for useful shell functions (:
# Shamelesly inspired (well borrowed?) from Kris


##################################################
# List all private functions, all of which begin
# # with double (or triple) underscores
##################################################
__list_my_functions() {
    if [ "$1" != "-a" ]; then
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
