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
set rnu " Relative Numbering

" Enable color scheme
set t_Co=256
color wombat256mod
highlight ColorColumn ctermbg=233

" Disable spk noise
set vb
set t_vb=

" Highlight search
set hlsearch

" Tabs are 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Enable code folding (optimized for Python)
set foldmethod=indent
set foldnestmax=2

" Mapping for fast open/close fold
" TIP: zj,zk to move between folds
nnoremap <space> za

" Disable Swap Files
set nobackup
set nowritebackup
set noswapfile

" Set <Leader> key
let mapleader = ","

" Quick quit
nnoremap <Leader>q :q<CR>

" Quick save
nnoremap <Leader>w :w<CR>

" Quick sort
vnoremap <Leader>s :sort<CR>

" --- PLUGINS -----------------------------------------------------------------

" vim-airline setup
set laststatus=2

" ctrlP setup
let g:ctrlp_max_height = 5
set wildignore+=*.pyc,*_build/*,*/coverage/*

" vim-gitgutter setup (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_map_keys = 0 " disable default key mapping
let g:gitgutter_max_signs = 400
highlight SignColumn ctermbg=233
