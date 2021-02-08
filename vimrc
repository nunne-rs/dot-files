set nocompatible              " be iMproved, required
filetype off                  " required
call plug#begin('~/.vim/plugged')

" FileManagement
Plug 'scrooloose/nerdtree'
Plug 'jlanzarotta/bufexplorer'

" Version Control
Plug 'tpope/vim-fugitive'

" Syntax Plugins
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'gabrielelana/vim-markdown'
Plug 'tfnico/vim-gradle'
Plug 'benmills/vimux'
Plug 'derekwyatt/vim-scala'
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-sleuth'
Plug 'editorconfig/editorconfig-vim'

" Searches
Plug 'mileszs/ack.vim'

" Comments
Plug 'tomtom/tcomment_vim'

" Pairs
Plug 'jiangmiao/auto-pairs'

" Colours
Plug 'nanotech/jellybeans.vim'
Plug 'twerth/ir_black'
Plug 'tomasr/molokai'
Plug 'whatyouhide/vim-gotham'

call plug#end()
filetype plugin indent on    " required

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syntax on
autocmd vimenter * ++nested colorscheme molokai
set termguicolors
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
set cmdheight=2
set updatetime=300
set shortmess+=c
set incsearch
set hlsearch
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif
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


let g:terraform_align=1
let g:terraform_fmt_on_save=1

autocmd CursorHold * silent call CocActionAsync('highlight')
