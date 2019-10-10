set nocompatible              " required
filetype off                  " required

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages available in Debian.
runtime! debian.vim


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" Add all your plugins here
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'tpope/vim-sleuth'
Plugin 'sheerun/vim-polyglot'
Plugin 'mzlogin/vim-smali'
Plugin 'Valloric/YouCompleteMe'
" Syntax highlighting
Plugin (v:version < 800 ? 'scrooloose/syntastic' : 'w0rp/ale')

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Viminfo settings
set viminfo='100,<300,s10,h
" '100 = remember last 100 files edited
" <300 = max 300 lines to copy
" s10 = max 10kb size for .viminfo file
" h = disable hlsearch when loading the vivminfo file

" If using a dark background within the editing area and syntax highlighting
" turn on this option as well
"set background=dark

" Uncomment the following to have Vim jump to the last position when
" reopening a file
"if has("autocmd")
"  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
"endif

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
set textwidth=80    " Set line width to 80 columns
set number          " Show line numbers"
"highlight LineNr ctermfg=Grey   " Color line number in grey (default: yellow)
set hls             " Set background color on the word you are searching
"set cursorline     " Highlight current line
set ts=4            " Set tabs to have 4 spaces
set expandtab       " Expand tabs into spaces
set autoindent      " Indent when moving to the next line while writing code
syntax on           " Enable syntax highlighting


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
" ignore 'from xxx import *' error
let g:ale_python_flake8_options = '--ignore=F403,F405'
" Enable more linters
let g:ale_linters = {'javascript': ['eslint']}

" Execute python scripts
autocmd FileType python nnoremap <F9> :w !python<CR>
" Execute go scripts
autocmd FileType go nnoremap <F9> :w !go run %<CR>
" Generate markdown slides
autocmd FileType markdown nnoremap <F9> :w !markdown-to-slides -d % -o %:r.html<CR>

" Markdown file completion
let g:ycm_filetype_blacklist={'markdown':0}
