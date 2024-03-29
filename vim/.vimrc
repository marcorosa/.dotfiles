set nocompatible              " required
filetype off                  " required

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim


" Viminfo settings
set viminfo='100,<300,s10,h
" '100 = remember last 100 files edited
" <300 = max 300 lines to copy
" s10 = max 10kb size for .viminfo file
" h = disable hlsearch when loading the vivminfo file

"set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set hlsearch        " Highlight search

" Custom settings
set textwidth=79    " Set line width to 79 columns
set number          " Show line numbers
"highlight LineNr ctermfg=Grey   " Color line number in grey (default: yellow)
set hls             " Set background color on the word you are searching
"set cursorline     " Highlight current line
set ts=4            " Set tabs to have 4 spaces
set expandtab       " Expand tabs into spaces
set autoindent      " Indent when moving to the next line while writing code
syntax on           " Enable syntax highlighting


" Vim airline settings
let g:airline_theme='dark'


" Nerdtree plugin settings
map <F3> :NERDTreeFocus<CR>         " Focus (or open, if closed)
map <F4> :NERDTreeToggle<CR>        " Open and close
let g:NERDTreeMapOpenSplit = 'h'    " Open file in horizontal split
let g:NERDTreeMapOpenVSplit = 'v'   " Open file in vertical split


" Syntastic plugin settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" latex
" let g:syntastic_tex_checkers=['chktex']
" Syntastic blacklist filetypes
let g:syntastic_mode_map = { 'passive_filetypes': ['tex'] }


" Ale plugin settings
let g:ale_list_window_size = 5  " show 5 lines of errors (default is 10)
" Enable more linters
let g:ale_linters = {'javascript': ['eslint']}
" ignore 'from xxx import *' error in python
let g:ale_python_flake8_options = '--ignore=F403,F405'

" Define fixers
let g:ale_fixers = {'python': ['autopep8', 'yapf', 'isort']}
" Bind F8 to fixing problems with ALE
nmap <F8> <Plug>(ale_fix)


" YouCompleteMe settings
" Markdown file completion
let g:ycm_filetype_blacklist={'markdown':0}


" Execute python scripts
autocmd FileType python nnoremap <F9> :w !python3<CR>
" Execute go scripts
autocmd FileType go nnoremap <F9> :w !go run %<CR>
" Generate markdown slides
autocmd FileType markdown nnoremap <F9> :w !markdown-to-slides -d % -o %:r.html<CR>
