syntax on
set number
set ruler
set title
" カーソル行をハイライト
set cursorline
"新しい行のインデントを現在行と同じにする
set autoindent
"インクリメンタルサーチを行う
set incsearch
"tabが対応する空白の数
set tabstop=4 shiftwidth=4 expandtab
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"入力補完時に、辞書ファイルも読み込む
set complete=.,w,b,u,t,i,k
"カレントディレクトリを出力
cmap <c-x> <c-r>=expand('%:p:h')<cr>/
"ファイル名(フルパス)を出力
cmap <c-z> <c-r>=expand('%:p:r')<cr>


" pathogen.vim
"https://github.com/tpope/vim-pathogen
call pathogen#infect()

" autocomplete php
:set omnifunc=phpcomplete#CompletePHP

" nerdtree
" autocmd vimenter * NERDTree
map <C-t> : NERDTreeToggle 


"https://github.com/Shougo/neocomplcache
let g:neocomplcache_enable_at_startup = 1

:color jellybeans
