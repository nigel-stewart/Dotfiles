" NeoVim Config - June 2020
" Inspired by Daniel Miessler's Vim Config
" https://danielmiessler.com/blog/vim-configuration-update-2019-version/
" BASIC CONFIG
" Remap Escape
inoremap jk <ESC>

" Remap the leader key to the spacebar
let mapleader = " "

" Save the current buffer using the leader key
noremap <Leader>w :w<CR>

" Save and exit Vim using the leader key
noremap <Leader>e :wq<CR>

" Exit without saving using the leader key
noremap <Leader>q :q!<CR>

" Goto line using a double-tap on the leader key, after your line number
noremap <Leader><Leader> G

" Enable syntax highlighting
syntax on

" Set the shell
set shell=/bin/zsh

" Spaces not tabs (4 wide)
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Clipboard functionality (paste from system)
vnoremap <leader>y "+y
noremap  <leader>y "+y
vnoremap <leader>p "+p
noremap  <leader>p "+p

" Look and feel
" Set vim-airline theme
let g:airline_theme='monochrome'

"" PLUGIN MANAGEMENT
packadd minpac
call minpac#init()

" Managed plugins (automatically installed and updated via "Pu" and "Pc")
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('vim-airline/vim-airline')
call minpac#add('vim-airline/vim-airline-themes')
call minpac#add('scrooloose/nerdtree')

command! Pu call minpac#update()
command! Pc call minpac#clean()

"" ADDITIONAL CONFIGURATION

" Line numbers
set number

" Open NERDTree with Ctrl+F
map <C-f> :NERDTreeToggle<CR>

" Open NERDTree automatically on start up if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
