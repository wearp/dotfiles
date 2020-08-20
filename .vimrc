set nocompatible

" Determines type of file based on file name and possibly contents.
" Used to determine intelligent auto-indent for each type.
filetype indent plugin on 

" Enable syntax highlighting.
syntax on

" Allows for switching between multiple files in same editor window.
" Use :ls to switch between different buffers, :ball to open all buffers
" in one window.
set hidden

" Better command-line complete.
set wildmenu

" Show partial commands in the last line of the screen.
set showcmd

" Highlight searches (use <C-L> to temporarily turn off highlighting; see
" mapping of <C-L> below).
set hlsearch

" Allow backspacing over autoindent, line breaks and start of line insert
" action.
set backspace=indent,eol,start

" For times when opening a new line and no filetype-specific indenting is
" enabled, it keeps the same indent as the previous line.
set autoindent

" Stop certain movements from always going to first character of a line.
set nostartofline

" Display the cursor position on the last line of the screen or in the status
" line of a window.
set ruler

" Always display the status line, even if only one window is displayed.
set laststatus=2

" Instead of failing a command because of unsaved changes, raise a dialogue
" asking if you wish to save changed file.
set confirm

" Use visual bell instead of beep.
set visualbell

" Enable use of mouse for all modes.
set mouse=a

" Set command window to 2 lines, to avoid many cases of having to press.
" "press <Enter> to continue"
set cmdheight=2

" Display line number on left.
set number

"------------------------------------------------------------------------------
" Indentation Options
"------------------------------------------------------------------------------

au BufEnter,BufRead *.py setlocal smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set tabstop=4
set shiftwidth=4
set expandtab

"------------------------------------------------------------------------------- 
" Mappings 
"-------------------------------------------------------------------------------

" Map Y to act like D and C. i.e. to yank until EOL, rather than to act as yy,
" which is the default.
map Y y$

" Map <C-L> (redraw screen) to also turn off search highlighting until the
" next search.
inoremap <C-L> :nohl<CR><C-L>

" May <ESC> to jk for leaving insert mode
inoremap jk <ESC>

let mapleader = "\<Space>"
