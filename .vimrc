set nocompatible
set number
set encoding=utf-8

  " 256 colors
  let &t_Co = 256
  " restore screen after quitting
  let &t_ti = "\<Esc>7\<Esc>[r\<Esc>[?47h"
  let &t_te = "\<Esc>[?47l\<Esc>8"
  if has("terminfo")
    let &t_Sf = "\<Esc>[3%p1%dm"
    let &t_Sb = "\<Esc>[4%p1%dm"
  else
    let &t_Sf = "\<Esc>[3%dm"
    let &t_Sb = "\<Esc>[4%dm"
  endif

call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf.vim'
Plug 'morhetz/gruvbox'
Plug 'shinchu/lightline-gruvbox.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-eunuch'             " :Rename, :Close, :SudoWrite, :Chmod
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'queezythegreat/vim-YouCompleteMe'

call plug#end()

syntax on
filetype plugin indent on

colorscheme gruvbox
set background=dark

set laststatus=2

set backspace=indent,eol,start
set smartindent
set showmatch
set ts=4
set softtabstop=0
set shiftwidth=4
set expandtab
nmap ; :
nnoremap Y y$
set history=10000
set mouse=a
let mapleader = " "

" Convenience: <Leader>m to save all + make
nmap <Leader>m :wa <bar> :make

" Search options
set hlsearch
set incsearch
set ignorecase

set number relativenumber
set foldmethod=syntax

" GitGutter shortcuts
nmap ]h <Plug>GitGutterNextHunk
nmap [h <Plug>GitGutterPrevHunk
nmap <Leader>hv <Plug>GitGutterPreviewHunk
omap ih <Plug>GitGutterTextObjectInnerPending
omap ah <Plug>GitGutterTextObjectOuterPending
xmap ih <Plug>GitGutterTextObjectInnerVisual
xmap ah <Plug>GitGutterTextObjectOuterVisual
nmap <leader>hr :GitGutterAll

" FZF
set rtp+=~/.fzf
nmap <leader>o :Files .<CR>

" Lightline
let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" ycm
let g:ycm_server_python_interpreter = "/usr/bin/python2"

" easymotion
map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

nmap <silent> <leader>/ :nohlsearch<CR>
