   """ BASIC OPTIONS

set nocp
filetype plugin on
runtime macros/matchit.vim

syntax off
set number
set ignorecase
set smartcase
set wildmenu

noremap <silent> <F5> :set invwrap<CR>
noremap <silent> <F6> :set invnumber<CR>
noremap <silent> <F7> :if exists("g:syntax_on") <Bar>
    \   syntax off <Bar>
    \ else <Bar>
    \   syntax enable <Bar>
    \ endif <CR>
noremap <silent> <F8> :set invlist<CR>

cnoremap <C-A> <Home>
cnoremap <C-F> <Right>
cnoremap <C-B> <Left>
cnoremap <Esc>b <S-Left>
cnoremap <Esc>f <S-Right>
cnoremap <C-P> <Up>
cnoremap <C-N> <Down>
cnoremap <C-Q> <C-F>

   """ GUI OPTIONS

set guifont=DejaVu\ Sans\ Mono\ 10
set winaltkeys=no

set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

   """ NAVIGATION

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>
