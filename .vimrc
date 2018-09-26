set nocompatible
set number
syntax on

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

set background=dark
colorscheme slate

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
