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
set tabstop=2 shiftwidth=2 expandtab
au BufNewFile,BufRead *.rhtml set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.erb set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb    set nowrap tabstop=2 shiftwidth=2
"新しい行を作ったときに高度な自動インデントを行う
set smartindent
"入力補完時に、辞書ファイルも読み込む
set complete=.,w,b,u,t,i,k
"カレントディレクトリを出力
cmap <c-x> <c-r>=expand('%:p:h')<cr>/
"ファイル名(フルパス)を出力
cmap <c-z> <c-r>=expand('%:p:r')<cr>

" showing tab, trail is showing 行末の余計なスペース
set listchars=tab:>-,trail:-
set list

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

"https://github.com/tpope/vim-pathogen
call pathogen#infect()

"vim-coffee-script
"http://prepro.wordpress.com/2012/06/07/vim%E3%81%A7coffeescript%E3%81%AE%E7%92%B0%E5%A2%83%E5%86%8D%E6%A7%8B%E7%AF%89%E3%81%97%E3%81%9F%E3%82%89%E6%A9%9F%E8%83%BD%E3%81%8C%E5%BC%B7%E5%8C%96%E3%81%95%E3%82%8C%E3%81%A6%E3%81%A6%E3%83%93/
"nnoremap <Leader>w :CoffeeCompile watch vert<CR>
"au BufWritePost *.coffee silent CoffeeMake! -cb | cwindow | redraw!
