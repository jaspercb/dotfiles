set nocompatible
set number

if &term =~ "xterm"
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
endif

execute pathogen#infect()
syntax on
filetype plugin indent on

set background=dark
let g:solarized_termcolors=256
colorscheme solarized

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }

set laststatus=2

set backspace=indent,eol,start
set smartindent
set showmatch
set ts=4
set softtabstop=0
set shiftwidth=4
set expandtab
nmap ; :
set history=10000
set mouse=a
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
