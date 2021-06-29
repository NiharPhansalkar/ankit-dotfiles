" Vundle Config
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'sheerun/vim-polyglot'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-syntastic/syntastic'
Plugin 'gregsexton/MatchTag'
call vundle#end()

filetype plugin indent on
" End of Vundle Config

runtime macros/matchit.vim

syntax on

set autoindent
set background=dark
set backspace=2
set belloff=all
set colorcolumn=81,101
set directory=~/.vim/swapfiles//
set expandtab
set fileformats=unix
set hlsearch
set incsearch
set nomodeline
set redrawtime=10000
set shiftwidth=4
set synmaxcol=0
set tabstop=4
set updatetime=250

" GitGutter Config
highlight GitGutterAdd    ctermfg=2
highlight GitGutterChange ctermfg=3
highlight GitGutterDelete ctermfg=1
" End of GitGutter Config

highlight ColorColumn ctermbg=8

let g:syntastic_python_flake8_args="--ignore=E501"

augroup vimrc
    autocmd!
    autocmd BufNew,BufRead * :syntax sync fromstart
augroup end
