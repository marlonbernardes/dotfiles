set nocompatible
filetype off
syntax enable
set background=dark
set expandtab
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 smarttab
set number
set list
set hlsearch


" visual mode: don't deselect text when identing
vnoremap > >gv
vnoremap < <gv

let g:jsx_ext_required = 0 " Allow JSX in normal JS files
let g:syntastic_javascript_checkers = ['eslint']
let mapleader = "\<Space>"

" leader y as yank to OS clipboard
vmap <leader>y "+y

" reload vim
map <silent> <leader>r :source ~/.vimrc<CR>:filetype detect<CR>:exe ":echo 'vimrc reloaded'"<CR>

" set mapping to navigate between open split windows
noremap <C-J> <C-W>j<C-W>_
noremap <C-k> <C-W>k<C-W>_
noremap <C-h> <C-W>h<C-W>_
noremap <C-l> <C-W>l<C-W>_

" set leader w as :w
noremap <leader>w :w<CR>

" set leader q as :q
noremap <leader>q :q<CR>

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
" syntax checker
Plugin 'scrooloose/syntastic'
" NERDTee
Plugin 'scrooloose/nerdtree'
" RainbowParenthesesToggle
Plugin 'kien/rainbow_parentheses.vim'
" Smart defaults for vim (ex: incremental search, etc)
Plugin 'tpope/vim-sensible'
" allows you to use <Tab> for all your insert completion needs
Plugin 'ervandew/supertab'
" language packs for vim (support for a lot of different languages)
Plugin 'sheerun/vim-polyglot'
" automatic closing of quotes, parenthesis, brackets, etc
Plugin 'Raimondi/delimitMate'
" file, buffer and tag finder for vim
Plugin 'kien/ctrlp.vim'
" for aligning text
Plugin 'godlygeek/tabular'
" for aligning text too, not sure if I need two plugins for that
Plugin 'junegunn/vim-easy-align'
" vim markdown support
Plugin 'plasticboy/vim-markdown'
" shows colors in css files
Plugin 'ap/vim-css-color'


map <F2> :NERDTreeToggle<CR>

colorscheme atom-dark-256

call vundle#end()
filetype plugin indent on
