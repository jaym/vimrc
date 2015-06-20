set nocompatible
filetype plugin indent on

call plug#begin('~/.vim/plugged')

Plug 'Spaceghost/vim-matchit'
Plug 'tpope/vim-sensible'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'tpope/vim-fugitive'
Plug 'gregsexton/gitv'
Plug 'Shougo/vimproc.vim', { 'do': 'make' }
Plug 'Shougo/unite.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'tpope/vim-markdown'

" ruby plugins {{{
Plug 'vim-ruby/vim-ruby', { 'for': 'ruby' }
Plug 'ujihisa/neco-ruby', { 'for': 'ruby' }
" }}}

" autocomplete plugins {{{
" Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
" }}}

" rust plugings {{{
Plug 'rust-lang/rust.vim'
" }}}

" nim plugins {{{
Plug 'zah/nimrod.vim', { 'for': 'nim' }
" }}}

" julia plugins {{{
Plug 'JuliaLang/julia-vim'
"}}}
call plug#end()

let mapleader=","
set lazyredraw

" copypasta configuration {{{
set clipboard=unnamedplus
" }}}

" solarized configuration {{{
syntax enable
set background=dark
set t_Co=256
!silent colorscheme solarized
" }}}

" ruby configuration {{{
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby let g:rubycomplete_rails = 1

autocmd FileType ruby,eruby
      \ setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
" }}}

" nim configuration {{{
autocmd FileType nim 
      \ setlocal shiftwidth=2 tabstop=2 softtabstop=2 expandtab
" }}}



" escape configuration {{{
inoremap jj <esc> 
inoremap kk <esc> 
inoremap lll <esc> 
inoremap hhh <esc> 
inoremap wwww <esc> 
inoremap bbb <esc> 

"tnoremap <esc> <C-\><C-n>
"tnoremap jj <C-\><C-n>
"tnoremap kk <C-\><C-n>
"tnoremap lll <C-\><C-n>
"tnoremap hhh <C-\><C-n>
"tnoremap wwww <C-\><C-n>
"tnoremap bbb <C-\><C-n>

" }}}

" formatting configuration {{{
" Set the character encoding for the file of this buffer
set fileencoding=utf-8
" Character encodings considered when starting to edit an existing file
set fileencodings=ucs-bom,utf-8,cp936,latin1
" Set the end-of-line formats of the current buffer
set fileformat=unix
set fileformats=unix,dos
autocmd FileType text setlocal textwidth=80
" }}}

" ui configuration {{{
set incsearch
set ignorecase
set smartcase
set hlsearch
set number
set backspace=indent,eol,start
set showmatch
" Match the width of glyphs in the CJK font
"set ambiwidth=double
" In many terminal emulators the mouse works just fine, thus enable it.
set mouse=a
" display incomplete commands
set showcmd
" Set command-line completion operates in an enhanced mode
set wildmenu
" Hide buffers when they are abandoned
set hidden
" Only set indent when no other was loaded.
if !exists("b:did_indent")
  set smartindent
endif

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the default
" position when opening a file.
autocmd BufReadPost *
      \ if line("'\"") > 1 && line("'\"") <= line("$") |
      \   exe "normal! g`\"" |
      \ endif

" }}}

" nerd commenter configuration {{{

" }}}

" unite.vim configuration {{{
  nnoremap <C-p> :Unite file_rec/async<cr>
  nnoremap <space>/ :Unite grep:.<cr>
  let g:unite_source_rec_async_command = 'ag --follow --nocolor --nogroup --hidden -g ""'
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
"}}}

" git configuration {{{
  let g:Gitv_OpenHorizontal = 1
"}}}

""" julia configuration {{{
autocmd FileType julia
      \ setlocal shiftwidth=4 expandtab
"""
