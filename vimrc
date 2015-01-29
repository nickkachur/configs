" Nick Kachur <nkachur@drexel.edu>

" Vundle (Plugin Management) {{{
    " Activate Vundle config
    source ~/.vim/bundles.vim
" }}}

" Basics {{{
    set nocompatible " not vi compatible (all the good stuff)
    filetype off
    set wildignore=*.o,*.out,*.pyc
" }}}

" Syntax and colors {{{
    syntax on
    colorscheme torte " favorite default colorscheme
    silent! colorscheme zenburn " switch to favorite personal colorscheme if it exists
" }}}

" Spaces, Tabs, and Indentation {{{
    set tabstop=4 " number of spaces per tab (for replacements)
    set softtabstop=4 " number of spaces per tab while editing
    set expandtab " tabs count as spaces
    set shiftwidth=4 " number of spaces to shift when using '>>' or '<<'
    filetype plugin indent on " use indent rules for current filetype
    set autoindent " default to keep same indent as previous line
    set smartindent " used with autoindent, moves '{' etc. automatically
    set smarttab " inserts/delets shiftwidth number of spaces in front of lines
" }}}

" UI Config {{{
    set number " show line numbers
    set showcmd " show previous command in the bottom bar
    set cmdheight=2 " set command menu height to two rows
    set confirm " when '!' is not supplied, ask for confirmation if necessary
    set colorcolumn=82,83 " Add color down columns 82-83
    hi ColorColumn ctermbg=236
    set cursorline " highlight current line, doesn't always work properly
    set wildmenu " visual autocomplete for cmd menu
    set showmatch " highlight matching parentheses/brackets/etc.
    set backspace=eol,start,indent " backspace key works on eol, start of line, and tabs
    set whichwrap+=<,>,h,l " allow h, l, and left/right to move to next line
    set nowrap " no line wrapping
    set encoding=utf8 " use UTF-8 standard encoding
" }}}

" Searching {{{
    set hlsearch " highlight matches
    set incsearch " search as characters are entered
    set ignorecase " case-insensitive search
" }}}

" Folding {{{
    set foldenable " enable section folding
    set foldlevelstart=10 " open most folds by default
    set foldnestmax=10 " 10 nested fold maximum
    nnoremap <space> za " space open/closes folds
    set foldmethod=indent " fold based on indent level
" }}}

" Movement {{{
        " Move vertically by visual lines
    nnoremap j gj
    nnoremap k gk
        " move to beginning/end of a line
    nnoremap B ^
    nnoremap E $
" }}}

" Leader shortcuts {{{
    let mapleader="," " leader is comma
        " jk is alternate for escape
        " (wait for leader timeout if "jk" is ever neccessary)
    inoremap jk <esc>
        " edit vimrc/bashrc and source them
    nnoremap <leader>ev :vsp $MYVIMRC<CR>
    nnoremap <leader>eb :vsp ~/.bashrc<CR>
    nnoremap <leader>sv :source $MYVIMRC<CR>
    nnoremap <leader>sb :source ~/.bashrc<CR>
" }}}

" Backups {{{
    set backup
    set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    set backupskip=/tmp/*,/private/tmp/*
    set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
    set writebackup
" }}}

" Custom Vim Functions {{{
    " Toggle between number and relativenumber
    function! ToggleNumber()
        if(&relativenumber == 1)
            set norelativenumber
            set number
        else
            set relativenumber
        endif
    endfunc
" }}}

" File specific settings {{{
    set modelines=1 " allow the last line of the file to be scanned for vim specific settings
" }}}

" vim:foldmethod=marker:foldlevel=0
