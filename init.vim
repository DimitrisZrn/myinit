call plug#begin('~/.config/nvim/bundle')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'

Plug 'stevearc/vim-arduino'
call plug#end()

set nocompatible
filetype plugin indent on
syntax enable
set shortmess+=c
set nobackup
set nowritebackup
set updatetime=200
set number
set signcolumn=no
set background=dark
set number
set smarttab
set shiftwidth=4
set tabstop=4
set cursorline
set noswapfile
set mouse=a
set autoindent
set splitright
set termguicolors
hi Normal guibg=NONE ctermbg=NONE
colorscheme ayu
"highlight Normal ctermbg=NONE

nnoremap - $
vnoremap - $
inoremap <C-e> <C-o>$
inoremap <C-s> <C-o>0
inoremap jk <ESC>
noremap Y y$
inoremap (; ()<left>
inoremap (, (<CR>) <C-c>O
inoremap {, {<CR>} <C-c>O
inoremap {; {}<left>
inoremap [, [<CR>] <C-c>O
inoremap [; []<left>
nnoremap <C-j> :tabprevious<CR>                                             
nnoremap <C-k> :tabnext<CR>
nnoremap <Enter> o<ESC>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction
