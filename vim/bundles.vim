" Stores all Plugin declarations separate from normal vimrc
"
" To install the Vundle package manager run:
" $ git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
" $ vim +PluginInstall +qall

set nocompatible " Be iMproved
filetype off     " Necessary for Vundle

"let g:vundle_default_git_proto = 'http'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Let Vundle manage Vundle
Plugin 'gmarik/Vundle.vim'

" Add Favorite plugins
Plugin 'maciakl/vim-neatstatus'
Plugin 'fholgado/minibufexpl.vim'

" Colors
Plugin 'flazz/vim-colorschemes'
Plugin 'michalbachowski/vim-wombat256mod'
Plugin 'rainux/vim-desert-warm-256'
Plugin 'zenburn'

call vundle#end()
filetype plugin indent on
