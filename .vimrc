"Change "* default register of X to "+. See https://wiki.archlinux.org/index.php/Vim
"set clipboard=unnamedplus

let mapleader=" "
syntax enable
set nocompatible
set mouse=a
set backspace=indent,eol,start
set number relativenumber
set encoding=utf-8
set wildmode=longest,list,full
set bg=dark
colorscheme patagonia

set shiftwidth=2
set tabstop=2
set autoindent
set smartindent
set infercase

set incsearch
set ignorecase
set smartcase
set hlsearch

nnoremap <leader>h :nohlsearch<CR>

"When forgot to sudo before creating new vim file
command SW w<Space>!sudo tee %

set smartindent 
