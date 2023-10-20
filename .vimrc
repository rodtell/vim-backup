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

" Plugins usando vim-plug
call plug#begin()
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-commentary'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'w0rp/ale'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'morhetz/gruvbox'
call plug#end()

" Emmet setup
let g:user_emmet_mode='a'
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" Ale setup and CoC
" Open your coc.nvim configuration file with :CocConfig and add 
" '"diagnostic.displayByAle"': true to your settings.

" Coc confirm completion
inoremap <expr> <cr> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"

" Color theme setup
colorscheme gruvbox

" Coc Plugins
" coc-json
" coc-tsserver
" coc-clangd
" coc-sh
" coc-pyright
