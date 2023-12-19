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
syntax on 

" Plugins (vim-plug plugin manager)
call plug#begin()
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'
Plug 'morhetz/gruvbox'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
 
" Emmet setup only html and css
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
 
" Snippets make <CR> to accept selected completion
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
  
" Ale setup disable end of line text
let g:ale_virtualtext_cursor = 'disabled'
 
" Color theme
let g:gruvbox_contrast_light = 'hard'
colorscheme gruvbox
 
" CoC Plugins
" coc-clangd
" coc-jedi
" coc-tsserver
" coc-snippets
" coc-sh
" coc-json
