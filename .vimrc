" Plugs

call plug#begin('~/.vim/plugged')

Plug 'tomasr/molokai'                       " colorscheme
Plug 'itchyny/lightline.vim'                " Status line
Plug 'scrooloose/nerdtree'                  " 側邊檔案樹 Tab(normal mode)
Plug 'preservim/nerdcommenter'              " 註解 commentToggle <learder>c<space>
"Plug 'valloric/youcompleteme'               " 自動補齊 Tab(insert mode), <C-E>, 有點影響到 vim 開起速度，先拿掉
Plug 'jiangmiao/auto-pairs'                 " 左右括號 單雙引號自動補齊
Plug 'tpope/vim-surround'                   " 字包起來 ysiw' 加上', cs'{ 取代成{, ds{ 刪掉{, Vmode S' 加上'
" -----------------------------------------------------------------------------------------
" Plug 'easymotion/vim-easymotion'          " 好像是很厲害可以跳來跳去的快捷鍵，還沒研究
" Plug 'mattn/emmet-vim'                    " Emmet 語法，以後如果有要用 vim 寫 html 可以裝
" Plug 'junegunn/goyo.vim'                  " Distraction-free writing 專心寫作模式，目前用不到

call plug#end()

" Plugin Setting

" NerdTree
nmap <silent> <TAB> :NERDTreeToggle<CR>     "改成 tab 開起 nerttree

" NerdComment
let mapleader=','                           " leader key 改成 ','
let g:NERDSpaceDelims = 1                   " nerdcommenter 註解符號後空一格
let g:NERDToggleCheckAllLines = 1           " 區段註解時，判斷有註解過的部分
map ,, <plug>NERDCommenterToggle            " 註解 toggle 改成 ,,

" Lightline
set laststatus=2
let g:lightline = {
      \ 'colorscheme': 'molokai'
      \ }


set enc=utf8
filetype plugin on                          " 偵測檔案類型，nerdcommenter 註解用
set nocompatible                            " 與 vi 非相容模式
set noshowmode                              " 不要顯示 vim mode, 要放在 nocompatible 後
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
