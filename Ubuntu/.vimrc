" Number of spaces that a <Tab> in the file counts for.
set tabstop=4
set shiftwidth=4
set ruler
set title
set tabstop=4 shiftwidth=4 expandtab
"for ruby
au BufNewFile,BufRead *.rhtml set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.erb set nowrap tabstop=2 shiftwidth=2
au BufNewFile,BufRead *.rb set nowrap tabstop=2 shiftwidth=2

"新しい行を作ったときに高度な自動インデントを行う
set smartindent

""入力補完時に、辞書ファイルも読み込む
set complete=.,w,b,u,t,i,k
"カレントディレクトリを出力
cmap <c-x> <c-r>=expand('%:p:h')<cr>/
"ファイル名(フルパス)を出力
cmap <c-z> <c-r>=expand('%:p:r')<cr>

"autocomplete php
:set omnifunc=phpcomplete#CompletePHP


"www.vim.org/scripts/script.php?script_id=2555
:color jellybeans

set imdisable " IMを無効化
set antialias
set guifont=Monaco:h14
set number
set listchars=eol:$,tab:>\ 


" :make をたたくだけde 文法エラーがあった行にカーソルが移動します
:set makeprg=php\ -l\ %
:set errorformat=%m\ in\ %f\ on\ line\ %l

" pathogen.vim
call pathogen#infect()

" nerdtree
" autocmd vimenter * NERDTree
map <C-t> : NERDTreeToggle 

"タブ切り替え
map <C-m> :tabn



" Tabs
nnoremap <Space>t t
nnoremap <Space>T T
nnoremap t <Nop>
nnoremap <silent> tc :<C-u>tabnew<CR>:tabmove<CR>
nnoremap <silent> tk :<C-u>tabclose<CR>
nnoremap <silent> tn :<C-u>tabnext<CR>
nnoremap <silent> tp :<C-u>tabprevious<CR>


