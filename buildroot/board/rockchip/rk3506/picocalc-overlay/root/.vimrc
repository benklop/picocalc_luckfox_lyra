syntax on
filetype on
imap jj <ESC>
nmap ; :
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

set autoindent      " Copy indent from current line when starting a new line.

set cursorline
set hlsearch
set incsearch
set ignorecase
set laststatus=2
set statusline+=%<%F\ %m\ [%l\/%L]\ %03c
