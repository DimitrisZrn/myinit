call plug#begin('~/.config/nvim/bundle')
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'
Plug 'flazz/vim-colorschemes'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
call plug#end()

"nvim-lspconfig
lua << EOF
--install pyls
require'nvim_lsp'.pyls.setup{on_attach=require'completion'.on_attach} 
--install clang-tools, clangd and make it default
require'nvim_lsp'.clangd.setup{on_attach=require'completion'.on_attach}
EOF

"completion-nvim
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
set completeopt=menuone,noinsert,noselect
set shortmess+=c
let g:completion_enable_auto_hover = 0
let g:completion_enable_auto_signature = 0
let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy', 'all']
set numberwidth=3
"vim-colorschemes
set background=dark
colorscheme gruvbox

"basic
syntax on
set number
set smarttab
set shiftwidth=4
set tabstop=4
set cursorline
set noswapfile
set mouse=a
set autoindent
set splitright
set signcolumn=no
"maps
inoremap <C-e> <C-o>$
inoremap jk <ESC>
noremap Y y$
inoremap (; ()<left>
inoremap (, (<CR>) <C-c>O
inoremap {, {<CR>} <C-c>O
inoremap {; {}<left>
inoremap [, [<CR>] <C-c>O
inoremap [; []<left>
inoremap "; ""<left>
inoremap '; ''<left>
nnoremap <C-j> :tabprevious<CR>                                             
nnoremap <C-k> :tabnext<CR>
nnoremap <Enter> o<ESC>
