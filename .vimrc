" basics
set nocompatible
filetype off
set wildignore=*.o,*.out,*.pyc

" vundle
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'

" add bundles here:
Bundle 'maciakl/vim-neatstatus'
Bundle 'michalbachowski/vim-wombat256mod'
Bundle 'rainux/vim-desert-warm-256'
Bundle 'UltiSnips'
"Bundle 'fholgado/minibufexpl'
Bundle 'zenburn'

" syntax
syntax on
colorscheme zenburn
set colorcolumn=82,83
hi ColorColumn ctermbg=236

set encoding=utf8

" indent
set expandtab
set shiftwidth=4
set tabstop=4
set nowrap
set autoindent
set smartindent
set smarttab

" user ex
set number
set cmdheight=2
set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" movement
map j gj
map k gk

" search
set hlsearch
set ignorecase

