" Plugs

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'                       " colorscheme

call plug#end()

set enc=utf8
filetype plugin on                          " 偵測檔案類型，nerdcommenter 註解用
set nocompatible                            " 與 vi 非相容模式
set backspace=indent,eol,start              " 設定 backspace 會刪掉的東西， 預設退到行首，不能退換行

set expandtab                               " tab 用 space
set tabstop=4                               " tab 4 格 space 長度""
set shiftwidth=4                            " 設定自動縮排寬度， 全選用 = 縮排時會用到
set smartindent                             " 比 autoindent 聰明一點，會判斷右括號下一行不要縮排
" set cinindent                             " 比 smartindent 更聰明一點，會參考程式邏輯，不確定效果先放著
autocmd FileType make setlocal noexpandtab  " Makefile 恢復用 tab

syntax on
set t_Co=256                                " 支援 color-256
colorscheme molokai
set hlsearch                                " 搜尋的 pattern 會 high light
set background=dark                         " 有些主題有分 dark/light
set cursorline                              " 底線
set number                                  " 行號
" au BufRead,BufNewFile *.g set syntax=antlr3 " antlr schema(for comiler course)

" key mapping
nmap <silent> f :noh<CR>                    " no hightlight
