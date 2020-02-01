" =============================================================================
" TROMEX NVIM INIT
" =============================================================================

" Plugins (https://github.com/junegunn/vim-plug)
call plug#begin('~/.local/share/nvim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' } " Autocompletion
Plug 'octol/vim-cpp-enhanced-highlight' " syntax highlighting for c++
Plug 'numkil/ag.nvim' " Ag command from nvim
Plug 'scrooloose/nerdtree' " File navigation with NERDTree
Plug 'tikhomirov/vim-glsl' " syntax highlighting for GLSL
Plug 'sakhnik/nvim-gdb', { 'do': ':!./install.sh \| UpdateRemotePlugins' } " Gdb, LLDB and PDB integration :)
Plug 'cloudhead/neovim-fuzzy' " Fuzzy file finder. Requires install fzy (sudo apt install fzy)
Plug 'junegunn/fzf' " Multi-entry selection UI.
Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh', }
" more info on clangd integration with LanguageClient-neovim at https://d0ot.github.io/2019/09/28/Neovim-clangd/

call plug#end()

" Showing line numbers and length
set number
set colorcolumn=140
set tw=139
set nowrap
set fo-=t " dont't auto wrap text when typing
set rnu

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

" Search current word with Ag
nnoremap <Leader>f :Ag <cword><CR>

" Change terminal to Normal mode
tnoremap <C-n> <C-\><C-n>

" Define path to make :find work as expected
set path+=.,**,,
set wildmenu

" Move between buffers
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprevious<CR>

" Close current buffer
nnoremap <Leader><F4> :bd<CR>

" Move to c++ header file
nnoremap <C-h> :find %:t:r.h<CR>

" Move to c++ source file
nnoremap <C-s> :find %:t:r.cpp<CR>

" Ctrl-P replacement
nnoremap <C-p> :FuzzyOpen<CR>

" Moving through git hunks
nnoremap <F7> :GitGutterPrevHunk<CR>zz
nnoremap <F8> :GitGutterNextHunk<CR>zz
nnoremap <F9> :GitGutterPreviewHunk<CR>

" Open terminal at the bottom of the current window and go to insert mode
nnoremap <leader>t :bo new<CR>:te<CR>i

" --- PLUGINS -----------------------------------------------------------------

" vim-airline setup
let g:airline#extensions#tabline#enabled = 2
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_enable_branch=1
let g:airline_powerline_fonts=1

set wildignore+=*.pyc,*.o,*.m,*/coverage/*,*/.git/*,*/.svn/*,*/install*,*/*.dir/*

" vim-gitgutter setup (https://github.com/airblade/vim-gitgutter)
let g:gitgutter_map_keys = 0 " disable default key mapping
let g:gitgutter_max_signs = 400

" deoplete setup
let g:deoplete#enable_at_startup = 1

"" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" LanguageClient setup
set signcolumn=yes " make sign column always visible
let g:LanguageClient_autoStart = 1 " enable neovim-LanguageClient
let g:LanguageClient_serverCommands = { 'cpp': ['clangd'] } " set clangd as server for C++
set completefunc=LanguageClient#complete " set complete function for deoplete.vim

" LanguageClient shortcuts
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
nnoremap gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <leader>r :call LanguageClient_textDocument_references()<CR>

" NERDTree setup
map <C-n> :NERDTreeToggle<CR>
