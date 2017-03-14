scriptencoding utf-8

set guifont=Inconsolata\ for\ Powerline:h14
set guioptions-=T               " Remove GUI toolbar
set guioptions-=e               " Use text tab bar, not GUI
set guioptions-=rL              " Remove scrollbars
set guicursor=a:blinkon0        " Turn off the blinking cursor
set visualbell t_vb=            " Suppress audio/visual error bell

set expandtab                   " Use soft tabs
set tabstop=2                   " Tab settings
set autoindent
set smarttab                    " Use shiftwidth to tab at line beginning
set shiftwidth=2                " Width of autoindent
set number                      " Line numbers
set backspace=indent,eol,start  " Let backspace work over anything.

set list                        " Show whitespace
set listchars=trail:·

set showmatch                   " Show matching brackets
set splitright                  " Add new windows towards the right
set splitbelow                  " ... and bottom
set scrolloff=3                 " Scroll when the cursor is 3 lines from edge
set cursorline                  " Highlight current line

set laststatus=2                " Always show statusline

set hlsearch
set incsearch                   " Incremental search
set history=1024                " History size
set ignorecase
set smartcase                   " Smart case-sensitivity when searching

set autoread                    " No prompt for file changes outside Vim

set swapfile                    " Keep swapfiles
set directory=~/.vim-tmp,~/tmp,/var/tmp,/tmp
set backupdir=~/.vim-tmp,~/tmp,/var/tmp,/tmp

" Write all writeable buffers when changing buffers or losing focus.
set autowriteall                " Save when doing various buffer-switching things.
autocmd BufLeave,FocusLost * silent! wall  " Save anytime we leave a buffer or MacVim loses focus.
