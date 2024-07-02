"      _
"     (_)
" __   ___ _ __ ___  _ __ ___
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__
" (_)_/ |_|_| |_| |_|_|  \___|

" basics
syntax on
filetype plugin indent on
set nocompatible
set filetype=off
set encoding=UTF-8
set tabstop=4
set shiftwidth=4 softtabstop=4
set noexpandtab
set incsearch
set wildmenu
set path+=**
set nu relativenumber
set scrolloff=4
set splitbelow splitright
set showmatch
set smartcase
set clipboard+=unnamed
set spelllang=en_us
set bg=dark
set undofile
set smartindent autoindent

let mapleader = " "

" IN ORDER TO HAVE DEVICONS WORKING, YOU HAVE TO USE A NERD FONT
" plugins
call plug#begin('~/.vim/autoload/')
Plug 'raimondi/delimitmate' " automatic closing of quotes, parenthesis, brackets, etc.
Plug 'tpope/vim-commentary' " comment and uncomment things by typing 'gcc'
Plug 'vim-airline/vim-airline' " status/tabline
Plug 'vim-airline/vim-airline-themes' " collection of themes for vim-airline
Plug 'ryanoasis/vim-devicons' " add filetype glyphs (icons) to various vim plugins
Plug 'lervag/vimtex' " latex support and compiling from Vim
Plug 'morhetz/gruvbox' " gruvbox colorscheme
call plug#end()

" use terminal background and not the colorscheme's one
autocmd ColorScheme * highlight! Normal ctermbg=NONE guibg=NONE

" when opening a file, position the cursor at last position
autocmd VimEnter * '"

" easly travel between tabs
map <C-h> <C-w>h
map <C-l> <C-w>l
map <C-j> <C-w>j
map <C-k> <C-w>k

" travel easly between these files (for nvim: ~/.config/nvim/init.vim)
map <silent> <leader>v :find ~/.vimrc<CR>

" source current file
map <leader>s :source %<CR>

" move between tabs by using the tab or Shift+tab buttons
noremap <Tab> gt
noremap <S-Tab> gT

" resize tab
noremap <silent> <A-l> :vertical resize +2<CR>
noremap <silent> <A-h> :vertical resize -2<CR>
noremap <silent> <A-k> :resize +2<CR>
noremap <silent> <A-j> :resize -2<CR>

" --- airline ---
" airline theme
let g:airline#extensions#tabline#enabled = 1 " enable buffers
let g:airline_theme='powerlineish'
" airline upper section style
let g:airline#extensions#tabline#formatter = 'unique_tail'
let g:airline_powerline_fonts = 1

" Remove banner from netrw
let g:netrw_banner = 0
let g:airline_section_z = 'lazzy'
let g:airline_section_error = ''
let g:airline_section_warning = ''

map <leader>e :Explore<CR>
map <leader>f :find 
map <leader>t :tabnew<CR>

map <leader>b :!make && ./a.out<CR>
map <leader>c :!gcc %<CR>
map <leader>p :!python3 %<CR>

colorscheme gruvbox
