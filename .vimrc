syntax on
set tabstop=4
set tw=0
set cpo-=<
set wildmenu

"検索文字列をハイライト
set hlsearch

"検索時に大文字小文字を区別
set ignorecase

":map Q :ls^M:b
:map S :ls<Return>:b
:map s :e#<Return>
"":map Q :ls<Return>:b
"":map <F2> a<C-R>=strftime("%c")<CR><Esc>
:map <Return> <C-]>

"コメントの色
":highlight Comment ctermfg=darkgray
highlight Comment ctermfg=lightblue

"ESP の置換
inoremap <C-j> <C-[>

augroup HighlightTrailingSpaces
  autocmd!
  autocmd VimEnter,WinEnter,ColorScheme * highlight TrailingSpaces term=underline guibg=Red ctermbg=Red
  autocmd VimEnter,WinEnter * match TrailingSpaces /\s\+$/
augroup END

filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle'))
endif

"NeoBundleFetch 'Shougo/neobundle.vim'
"NeoBundle 'mattn/emmet-vim'

call neobundle#end()

filetype plugin indent on

autocmd BufWritePre * :%s/\s\+$//e

