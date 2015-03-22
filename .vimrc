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

" Make it so that we always go to the last position we were at
" in the buffer when we were last in it.
if has("autocmd")
  autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  endif

" Keymaps
let mapleader="§"
map <Leader>n :NERDTreeToggle<CR>
map <Leader>cd :lcd %:p:h<CR>

