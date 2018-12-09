set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'gabrielelana/vim-markdown'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tfnico/vim-gradle'
Plugin 'nanotech/jellybeans.vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'leafgarland/typescript-vim'
Plugin 'morhetz/gruvbox'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'benmills/vimux'

call vundle#end()            " required
filetype plugin indent on    " required

syntax on
colorscheme gruvbox
set background=dark
set number
set backspace=2
set noswapfile

let mapleader=","
map <Leader>nt :NERDTreeToggle <CR>
map <Leader>nf :NERDTreeFind <CR>
map <Leader>ff :FZF <CR>
map <Leader>gw :Ggrep <cword> <CR>
map <Leader>rl :VimuxRunLastCommand <CR>
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set hidden
set incsearch
set hlsearch
set ignorecase
set visualbell
set noerrorbells

set rtp+=/usr/local/opt/fzf

autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

let g:tsuquyomi_completion_detail = 1
