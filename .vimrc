set encoding=utf-8
colorscheme solarized

" Start pathogen
execute pathogen#infect()
syntax on
filetype plugin indent on

let $PYTHONPATH='/usr/lib/python3.4/site-packages' 
set laststatus=2

let mapleader="§"
map <Leader>n :NERDTreeToggle<CR>
map <Leader>cd :lcd %:p:h<CR>
