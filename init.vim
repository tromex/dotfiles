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
Plug 'lifepillar/vim-solarized8'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocompletion
Plug 'Shougo/deoplete-clangx' " completion using clang
Plug 'Shougo/neoinclude.vim' " completion from header files
Plug 'octol/vim-cpp-enhanced-highlight' " syntax highlighting for c++
Plug 'numkil/ag.nvim' " Ag command from nvim
Plug 'scrooloose/nerdtree' " File navigation with NERDTree
Plug 'tikhomirov/vim-glsl' " syntax highlighting for GLSL

call plug#end()

" Showing line numbers and length
set number
set colorcolumn=100
set tw=99
set nowrap
set fo-=t " dont't auto wrap text when typing
set rnu

" Color scheme
set termguicolors
set background=dark
colorscheme solarized8_high

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

" Define path to make :find work as expected
set path+=.,**,,
set wildmenu

" Move between buffers
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprevious<CR>

" --- PLUGINS -----------------------------------------------------------------

" vim-airline setup
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_enable_branch=1
let g:airline_powerline_fonts=1

" ctrlP setup
let g:ctrlp_max_height = 10
set wildignore+=*.pyc,*/build*,*/coverage/*,*/cmake*/*,*/bin*,*/.git/*,*/.svn/*,*/install*

" vim-gitgutter setup (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_map_keys = 0 " disable default key mapping
let g:gitgutter_max_signs = 400

" deoplete setup
let g:deoplete#enable_at_startup = 1

"" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" NERDTree setup
map <C-n> :NERDTreeToggle<CR>
