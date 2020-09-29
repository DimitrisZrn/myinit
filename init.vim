call plug#begin('~/.config/nvim/bundle')
"================
"Start of plugins
"================
Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
Plug 'zchee/deoplete-clang'
Plug 'zchee/deoplete-jedi'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'scrooloose/nerdcommenter'
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
"================
"End of plugins
"================
call plug#end()
"================
"basic settings
"================
filetype plugin indent on
syntax on
syntax enable
set path+=**
set wildmenu
set background=dark
set number
set smarttab
set shiftwidth=4
set tabstop=4
set cursorline
set incsearch
set noswapfile
set autoindent
set mouse=a
set history=1000
"my inoremaps && noremaps
"go to end of line while on ins mode
inoremap <C-e> <C-o>$
"jk quick alternative to ESC
inoremap jk <ESC>
"Y yanks everything from cursor to $(end of line)
noremap Y y$
"closing brackets
"nvim bug type as command
inoremap (; ()<left>
inoremap (, (<CR>) <C-c>O
inoremap {, {<CR>} <C-c>O
inoremap {; {}<left>
inoremap [, [<CR>] <C-c>O
inoremap [; []<left>
inoremap "; ""<left>
inoremap '; ''<left>

nmap <CR> o<ESC>
"tabs
nnoremap <C-Left> :tabprevious<CR>                                          
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-j> :tabprevious<CR>                                             
nnoremap <C-k> :tabnext<CR>
"colorscheme
colorscheme gruvbox

"================
"plugins settings
"================
"deoplete.nvim settings
let g:deoplete#enable_at_startup = 1
"use tab to forward cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
"use tab to backward cycle
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"

"deoplete-clang settings (C,C++)
let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-10/lib/libclang-10.so.1'
let g:deoplete#sources#clang#clang_header = '/usr/lib/llvm-10/lib/clang' 
"use tabs to cycle
inoremap <silent><expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"
inoremap <silent><expr><s-tab> pumvisible() ? "\<c-p>" : "\<s-tab>"
let g:deoplete#sources#clang#std#c = 'c11'
let g:deoplete#sources#clang#std#cpp = 'c++1z'
let g:deoplete#sources#clang#sort_algo = 'priority'
set completeopt-=preview

"syntastic settings
"let g:syntastic_check_on_open=1
"let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '✗'
let g:syntastic_style_error_symbol = '∆'
let g:syntastic_style_warning_symbol = '∆'
let g:syntastic_cpp_checkers = ['GCC', 'AVR-GCC', 'Cppcheck']
let g:syntastic_c_checkers = ['GCC', 'make', 'AVR-GCC']
let g:syntastic_html_checkers = []
let g:syntastic_java_checkers = ['javac']
let g:syntastic_javascript_checkers = []
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_python_checkers = ['flake8', 'Bandit' , 'python']
let g:syntastic_python_flake8_args = '--max-line-length=100'
let g:syntastic_ruby_checkers = ['mri']
let g:syntastic_sh_checkers = ['shellcheck']

"vim airline settings
let g:airline_theme='minimalist'
