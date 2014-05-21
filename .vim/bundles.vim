set nocompatible " Be iMproved
filetype off     " Necessary for Vundle

"let g:vundle_default_git_proto = 'http'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Bundle 'gmarik/Vundle.vim'

" Add Favorite plugins
Bundle 'maciakl/vim-neatstatus'
Bundle 'fholgado/minibufexpl'
Bundle 'UltiSnips'

" Colors
Bundle 'michalbachowski/vim-wombat256mod'
Bundle 'rainux/vim-desert-warm-256'
Bundle 'zenburn'

call vundle#end()
filetype plugin indent on
