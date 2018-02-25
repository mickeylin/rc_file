set nocompatible
set enc=utf8
set backspace=indent,eol,start

" key mapping
imap <S-TAB> <C-N>

" tab space
set expandtab
set tabstop=4
set shiftwidth=4  

set hlsearch
set background=dark
set autoindent
set smartindent
set cursorline
set number
set ruler

" color
syntax on 
colorscheme desert
highlight LineNr cterm=bold ctermfg=DarkGrey ctermbg=NONE
highlight CursorlineNr cterm=bold ctermfg=yellow ctermbg=NONE
highlight cursorline cterm=bold
highlight PmenuSel cterm=underline ctermbg=darkred ctermfg=white
highlight Pmenu cterm=bold ctermbg=DarkGrey ctermfg=white
highlight Search ctermbg=DarkCyan ctermfg=Black

" antlr schema
"au BufRead,BufNewFile *.g set syntax=antlr3
" Makefile schema
autocmd FileType make setlocal noexpandtab


" NR-16		COLOR NAME 
" 0			Black
" 1			DarkBlue
" 2	     	DarkGreen
" 3	     	DarkCyan
" 4	     	DarkRed
" 5	     	DarkMagenta
" 6	     	Brown, DarkYellow
" 7	     	LightGray, LightGrey, Gray, Grey
" 8	     	DarkGray, DarkGrey
" 9	     	Blue, LightBlue
" 10   	    Green, LightGreen
" 11   	    Cyan, LightCyan
" 12   	    Red, LightRed
" 13   	    Magenta, LightMagenta
" 14   	    Yellow, LightYellow
" 15   	    White
