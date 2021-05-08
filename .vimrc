set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
let g:vundle_default_git_proto = 'git'
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Bundles
Plugin 'VundleVim/Vundle.vim'

" Status Bar
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Theme color
Plugin 'altercation/vim-colors-solarized'

" Auto align text (For VHDL)
Plugin 'godlygeek/tabular'

" Undoo tree
Plugin 'sjl/gundo.vim'

" Git plugin
Plugin 'tpope/vim-fugitive'

" tabnine
" Plugin 'zxqfl/tabnine-vim'

" Latex plugin
Plugin 'lervag/vimtex'

call vundle#end()
" Required for vundle
" filetype plugin indent on
filetype plugin on

syntax on

set encoding=utf-8

" Airline config
let g:airline_powerline_fonts = 1
let g:airline#extension#tabline#enabled = 1
let g:airline_theme = 'powerlineish'

" History
set history=50

" Display
set ls=2
set showmode
set showcmd
set modeline
set ruler
set title
set nu

" Line wrapping
set wrap
set linebreak
set showbreak=▹

" Auto indent what you can
set autoindent

" Searching
set ignorecase
set smartcase
set gdefault
set hlsearch
set showmatch

" Enable jumping into files in a search buffer
set hidden

" Make backspace a bit nicer
set backspace=eol,start,indent

" Indentation
set shiftwidth=4
set tabstop=4
set softtabstop=4
set shiftround
set expandtab

" Disable mouse
set mouse=

" Switch tabs
map 8 <Esc>:tabe
map 9 gT
map 0 gt

" Gundo toggle
if has('python3')
    let g:gundo_prefer_python3 = 1
endif

map <F5> <Esc>:GundoToggle<CR>



" Toggle line-wrap
map <F6> <Esc>:set wrap!<CR>

" Open file under cursor in new tab
map <F9> <Esc><C-W>gF<CR>:tabm<CR>

" Visual prompt for command completion
set wildmenu

set noesckeys
set nocompatible
