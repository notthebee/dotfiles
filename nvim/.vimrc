" Required options
set nocompatible
set shell=bash
set tw=0
filetype off
set clipboard=unnamedplus
set backspace=indent,eol,start
let $NVIM_TUI_ENABLE_CURSOR_SHAPE=0
set guicursor=
set clipboard+=unnamedplus

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'shime/vim-livedown'
Plugin 'junegunn/goyo.vim'
Plugin 'python-mode/python-mode'
Plugin 'mattn/emmet-vim'
Plugin 'lervag/vimtex'
Plugin 'justinmk/vim-sneak'
call vundle#end()
filetype plugin indent on
let python_highlight_all=1



" Mappings
nmap ;g :Goyo<CR>
map q <Nop>
map Q <Nop>
map ,c :lcl<CR> :pc<CR> :cclose<CR>


" Python
let g:pymode_python = 'python3'
:let mapleader = ","
let g:pymode_rope = 1
let g:pymode_rope_completion = 1
let g:pymode_rope_lookup_project = 0
let g:pymode_rope_completion_bind = '<C-Space>'
let g:pymode_rope_complete_on_dot = 1


" Misc settings
let g:goyo_width = "80%"
let g:goyo_height = "80%"

let g:vimtex_compiler_enabled = 1
let g:vimtex_compiler_progname = 'nvr'
let g:vimtex_view_general_viewer = 'okular'
set nu
set relativenumber
syntax on
set laststatus=2
set background=dark
colorscheme default
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")
au BufNewFile,BufRead *.md
    \ Goyo |
    \ hi StatusLineNC ctermfg=white | 
    \ set nonu | 
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix
au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2
set encoding=utf-8
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree
hi StatusLine ctermbg=none cterm=bold

" Livedown
let g:livedown_browser = "qutebrowser"
let g:livedown_autorun = 0
let g:livedown_open = 1
let g:livedown_port = 4242

" Custom commands
command! Compile !pdflatex %:p|!biber file|!pdflatex %:p
