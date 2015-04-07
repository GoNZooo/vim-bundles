" Set default encoding to utf-8
set encoding=utf-8

" Tab sizes. I can't stand tabsizes of 8 in the end
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Start pathogen
execute pathogen#infect()

set t_Co=256
set background=dark
colorscheme gonzcolors

" Syntax highlighting on
syntax on

" Set search highlighting to all matches
" in cyan (color 14)
set hlsearch
highlight Search ctermbg=14

" Set loading of plugin files and indent files on 
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

" Reload .vimrc immediately after writing
if has("autocmd")
	autocmd BufWritePost .vimrc source $MYVIMRC
endif

" Keymaps
let mapleader="§"

" Expansions
"
" %% expands to current path, all thanks to Gary Bernhardt
" See: http://vimcasts.org/episodes/the-edit-command/
cnoremap %% <C-R>=fnameescape(expand('%:p:h'))."/"<CR>
" %rc expands to vimrc
cnoremap %rc ~/code/vim/dotvim/.vimrc

map <Leader>cd :lcd %:p:h<CR>

" Useful bindings for opening new files
" Current window
map <Leader>ew :e %%
" New tab
map <Leader>et :tabe %%
" New window from vertical split
map <Leader>ev :vsp %%
" New window from horizontal split
map <Leader>es :sp %%
