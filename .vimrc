set number	 
set linebreak	 
set showbreak=+++	 
set textwidth=100	 
set showmatch	 
set hlsearch	 
set smartcase	 
set ignorecase	 
set incsearch	 
set autoindent	 
set shiftwidth=4	 
set smartindent	 
set smarttab	 
set softtabstop=4	
set ruler	
set undolevels=1000	
set backspace=indent,eol,start

" Vim-plug plugin manager & plugins
call plug#begin()
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'morhetz/gruvbox'
call plug#end()
 
" Emmet setup
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
 
" CoC setup
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"
 
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
 
" Colorscheme
colorscheme gruvbox

" CoC Plugins
" coc-clangd
" coc-json
" coc-tsserver
" coc-sh
" coc-pyright
