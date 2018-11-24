" =============================================================================
" TROMEX NVIM INIT
" =============================================================================

" Plugins (https://github.com/junegunn/vim-plug)
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kien/ctrlp.vim'
Plug 'airblade/vim-gitgutter'
Plug 'morhetz/gruvbox'

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
colorscheme gruvbox

" Allow transparency
hi Normal ctermbg=none

" Tabs are 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4
set shiftround
set expandtab

" enable mouse
set mouse=a

" fix strange characters problem on some terminal emulators
let $NVIM_TUI_ENABLE_CURSOR_SHAPE = 0
set guicursor=

" netrw options
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

" Incremental command preview
set icm=split

" Set <Leader> key
let mapleader = ","

" netrw to navigate directories
map <Leader>n :Lexplore<CR>
map <C-n> :Lexplore<CR>

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
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_enable_branch=1
let g:airline_powerline_fonts=1

" ctrlP setup
let g:ctrlp_max_height = 10
set wildignore+=*.pyc,*_build/*,*/coverage/*

" vim-gitgutter setup (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_map_keys = 0 " disable default key mapping
let g:gitgutter_max_signs = 400

