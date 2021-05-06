" Misc
set nu
set relativenumber
syntax on
set noswapfile
set nobackup
set noerrorbells
set nohlsearch
set incsearch
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=**/coverage/*
set wildignore+=**/node_modules/*
set wildignore+=**/android/*
set wildignore+=**/ios/*
set wildignore+=**/.git/*
set belloff=all
set bg=dark
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent
set autoindent
set termguicolors
set nowrap
set smartcase
set ignorecase
set undodir=~\vimfiles\undodir
set undofile
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set updatetime=200
set ruler
if has("gui_running")
	autocmd GUIEnter * set vb t_vb=
endif

" Remaps
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-o> <C-w>o
nnoremap <S> :w
nnoremap <C-p> ':Files .'

" Plugins
call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'scrooloose/nerdtree'
Plug 'gruvbox-community/gruvbox'
call plug#end()

colorscheme gruvbox
autocmd vimenter * ++nested colorscheme gruvbox
