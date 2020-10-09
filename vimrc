set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'gabrielelana/vim-markdown'
Plug 'tfnico/vim-gradle'
Plug 'jlanzarotta/bufexplorer'
Plug 'benmills/vimux'
Plug 'twerth/ir_black'
Plug 'mileszs/ack.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'whatyouhide/vim-gotham'
Plug 'tomtom/tcomment_vim'
Plug 'elixir-editors/vim-elixir'
Plug 'udalov/kotlin-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'derekwyatt/vim-scala'

call plug#end()
filetype plugin indent on    " required

syntax on
colorscheme jellybeans
set number
set backspace=2
set noswapfile

let mapleader=","
map <Leader>nt :NERDTreeToggle <CR>
map <Leader>nf :NERDTreeFind <CR>
let NERDTreeQuitOnOpen = 1
let NERDTreeAutoDeleteBuffer = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeWinSize=80


let $FZF_DEFAULT_COMMAND = 'fd --type f'
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
set novisualbell
set noerrorbells
set nobackup
set nowritebackup
set shortmess+=c

set rtp+=/usr/local/opt/fzf

autocmd Filetype typescript setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2
" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end


xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>ac  <Plug>(coc-codeaction)
nmap <leader>qf  <Plug>(coc-fix-current)
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)


