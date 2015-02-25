" =============================================================================
" TROMEX VIMRC
" =============================================================================

" Enable plugin manager
filetype off
execute pathogen#infect()
execute pathogen#helptags()

" Auto reload .vimrc on save
autocmd! bufwritepost .vimrc source %

" Syntax highlighting
syntax on
filetype plugin indent on

" Showing line numbers and lenght
set number
set colorcolumn=80
set tw=79
set nowrap " dont't auto wrap on load
set fo-=t " dont't auto wrap text when typing

" Enable color scheme
set t_Co=256
color wombat256mod
highlight ColorColumn ctermbg=233

set hlsearch " Highlight search enabled

" Tabs are 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Set <Leader> key
let mapleader = ","

" Disable Swap Files
set nobackup
set nowritebackup
set noswapfile

" Easy window movement
noremap <c-h> <c-w>h
noremap <c-j> <c-w>j
noremap <c-k> <c-w>k
noremap <c-l> <c-w>l

" Quick quit
nnoremap <Leader>q :q<CR>

" Quick save
nnoremap <Leader>w :w<CR>

" Quick sort
vnoremap <Leader>s :sort<CR>

" vim-airline setup
set laststatus=2

" ctrlP setup
let g:ctrlp_max_height = 5
set wildignore+=*.pyc,*_build/*,*/coverage/*

" vim-gitgutter setup (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_map_keys = 0 " disable default key mapping
let g:gitgutter_max_signs = 400
highlight SignColumn ctermbg=233
