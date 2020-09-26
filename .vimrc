syntax enable

set backspace=indent,eol,start
let mapleader = ','

"------------------Visuals------------------"
"colorscheme gruvbox 
autocmd vimenter * colorscheme gruvbox

"------------------Search------------------"
set hlsearch
set incsearch

"------------------Mappings------------------"
nmap <Leader>ev :tabedit ~/.vimrc<cr>
nmap <Leader><space> :nohlsearch<cr>


"------------------Auto-Commands------------------"
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END


"------------------<vundle-stuffs-begin>------------------"
set nocompatible              " be iMproved, required
filetype off                  " required
"------------------</vundle-stuffs-begin>------------------"

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"------------------Plugins------------------"
Plugin 'morhetz/gruvbox'


"------------------<vundle-stuffs-end>------------------"
call vundle#end()            " required
filetype plugin indent on    " required
"------------------</vundle-stuffs-end>------------------"


