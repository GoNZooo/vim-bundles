" Set default encoding to utf-8
set encoding=utf-8

" Set colorscheme to solarized
colorscheme solarized

" Start pathogen
execute pathogen#infect()

" Syntax highlighting on
syntax on

" Autoindent for plugin files
filetype plugin indent on

" Show line numbers
set number

" Set the python path to be visible for powerline, the enable powerline
let $PYTHONPATH='/usr/lib/python3.4/site-packages' 
set laststatus=2

" Keymaps
let mapleader="§"
map <Leader>n :NERDTreeToggle<CR>
map <Leader>cd :lcd %:p:h<CR>
