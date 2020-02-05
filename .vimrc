" Vundle and plugins
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" Close preview window after completion
let g:ycm_autoclose_preview_window_after_completion = 1

"Change "* default register of X to "+. See https://wiki.archlinux.org/index.php/Vim
set clipboard=unnamedplus

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
map <leader>w :pc<CR>

"When forgot to sudo before creating new vim file
command SW w<Space>!sudo tee %

set smartindent 

"python with virtualenv support
py << EOF
import os
import sys
if 'VIRTUAL_ENV' in os.environ:
  project_base_dir = os.environ['VIRTUAL_ENV']
  activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  execfile(activate_this, dict(__file__=activate_this))
EOF
