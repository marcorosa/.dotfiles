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

" Add all your plugins here (note older versions of Vundle used Bundle instead of Plugin)
"Plugin 'scrooloose/syntastic'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
"Plugin 'andviro/flake8-vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'vim-airline/vim-airline'
Plugin 'Valloric/YouCompleteMe'
" Syntax highlighting
Plugin (v:version < 800 ? 'scrooloose/syntastic' : 'w0rp/ale')
"Bundle 'ntpeters/vim-airline-colornum'  " Broken
"Plugin 'FredKSchott/CoVim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" All system-wide defaults are set in $VIMRUNTIME/debian.vim and sourced by
" the call to :runtime you can find below.  If you wish to change any of those
" settings, you should do it in this file (/etc/vim/vimrc), since debian.vim
" will be overwritten everytime an upgrade of the vim packages is performed.
" It is recommended to make changes after sourcing debian.vim since it alters
" the value of the 'compatible' option.

" Uncomment the next line to make Vim more Vi-compatible
" NOTE: debian.vim sets 'nocompatible'.  Setting 'compatible' changes numerous
" options, so any other options should be set AFTER setting 'compatible'.
"set compatible

" Vim5 and later versions support syntax highlighting. Uncommenting the next
" line enables syntax highlighting by default.
if has("syntax")
  syntax on
endif

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

" Uncomment the following to have Vim load indentation rules and plugins
" according to the detected filetype.
"if has("autocmd")
"  filetype plugin indent on
"endif

"set showcmd		" Show (partial) command in status line.
"set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set incsearch		" Incremental search
"set autowrite		" Automatically save before commands like :next and :make
"set hidden         " Hide buffers when they are abandoned
"set mouse=a		" Enable mouse usage (all modes)
set hlsearch        " Highlight search
set textwidth=80    " Set line width to 80 columns

" Source a global configuration file if available
if filereadable("/etc/vim/vimrc.local")
  source /etc/vim/vimrc.local
endif

"Show line numbers"
set number
"color line number grey (default = yellow)
"highlight LineNr ctermfg=Grey
"Set background color on the word you are searching
set hls

" Highlight current line
"set cursorline

" Enable syntax highlighting
"syntax enable

" Set tabs to have 4 spaces
set ts=4

" Python settings:
" Expand tabs into spaces
set expandtab
" Indent when moving to the next line while writing code
set autoindent
" Enable all Python syntax highlighting features
let python_highlight_all = 1

" Nerdtree plugin settings
map <F3> :NERDTreeFocus<CR>     " Focus (or open, if closed)
map <F4> :NERDTreeToggle<CR>    " Open and close


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


"" flake-8 plugin settings
"" Auto-check file for errors on write
"let g:PyFlakeOnWrite = 1
"" List of checkers used:
"let g:PyFlakeCheckers = 'pep8,mccabe,frosted'
"" Whether to place signs or not:
"let g:PyFlakeSigns = 1
"" Maximum line length for PyFlakeAuto command
"let g:PyFlakeMaxLineLength = 80
"" Visual-mode key command for PyFlakeAuto
"let g:PyFlakeRangeCommand = 'Q'

" Execute python scripts
autocmd FileType python nnoremap <F9> :w !python<CR>
" Generate markdown slides
autocmd FileType markdown nnoremap <F9> :w !markdown-to-slides -d % -o %:r.html<CR>

" Markdown file completion
let g:ycm_filetype_blacklist={'markdown':0}


" CoVim settings
"let CoVim_default_name = "marco"
"let CoVim_default_port = "8000"
