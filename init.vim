" =============================================================================
" TROMEX NVIM INIT
" =============================================================================

" Plugins (https://github.com/junegunn/vim-plug)
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'edkolev/tmuxline.vim'
Plug 'scrooloose/nerdtree'
Plug 'altercation/vim-colors-solarized'

call plug#end()

" Showing line numbers and length
set number
set colorcolumn=80
set tw=79
set nowrap
set fo-=t " dont't auto wrap text when typing
set rnu

" Color scheme
set background=dark
color solarized

" Tabs are 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" Set <Leader> key
let mapleader = ","

" NERDtree
map <Leader>n :NERDTreeToggle<CR>
map <C-n> :NERDTreeToggle<CR>

" Quick quit
nnoremap <Leader>q :q<CR>

" Quick save
nnoremap <Leader>w :w<CR>

" Windows navigation with Alt+{h,j,k,l} also with terminal mode
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l

" --- PLUGINS -----------------------------------------------------------------

" vim-airline setup
set laststatus=2

" ctrlP setup
let g:ctrlp_max_height = 5
set wildignore+=*.pyc,*_build/*,*/coverage/*

" vim-gitgutter setup (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_map_keys = 0 " disable default key mapping
let g:gitgutter_max_signs = 400

" NERDtree
let NERDTreeIgnore = ['\.pyc$']
