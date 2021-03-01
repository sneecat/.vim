" load vim-plug
"source ~/.vim/autoload/.plug.vim

filetype plugin indent on

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged/')
Plug 'junegunn/vim-easy-align'
Plug 'junegunn/seoul256.vim'
Plug 'easymotion/vim-easymotion'
call plug#end()

syntax enable
set syntax=on
set ignorecase
set showcmd
set showmatch
set undofile
set undodir=~/.vim/undo
set exrc
set secure
set backspace=2
set showmode
set autochdir
set hlsearch

" appearance
set t_Co=256
colorscheme seoul256
set number

" keymapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

imap jj <Esc>
nnoremap <expr> k (v:count == 0 ? 'gk' : 'k')
nnoremap <expr> j (v:count == 0 ? 'gj' : 'j')
nnoremap <SPACE> <Nop>
let mapleader=" "

" tab settings
set tabstop=4
set shiftwidth=4
set autoindent
set smarttab

" netrw settings
" default to tree view
let g:netrw_liststyle = 3
" open new files in vsplit
let g:netrw_browse_split = 2
" limit netrw to 25% window size
let g:netrw_winsize = 25


augroup numbertoggle
	autocmd!
	autocmd InsertLeave * set relativenumber
	autocmd InsertEnter * set norelativenumber
augroup END 
