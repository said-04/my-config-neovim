set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath

set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode


call plug#begin('~/.nvim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'

"IDE"
Plug 'easymotion/vim-easymotion'
Plug 'scrooloose/nerdtree'

"Con el siguiente plug me es posible navegar entre NERDTree y mi página actual. Manteniendo presionado la tecla. ctrl y utilizando la letra l y h "
Plug 'christoomey/vim-tmux-navigator'


Plug 'jiangmiao/auto-pairs'

call plug#end()


colorscheme gruvbox
let g:gruvbox_contrast_dark = "hard"

"Con el siguiente comando se cierra automaticamnete el NERDTree despues de utilizarlo al seleccinoar un archivo."
let NERDTreeQuitOnOpen = 1

let mapleader = " "

"Se presiona la tecla esc después la tecla espacio y finalmnete la letra s."
nmap <Leader>s <Plug>(easymotion-s2)

"Se presiona la tecla esc después la tecla espacio y finalmente las letras nt"
"Para cerrarlo se utiliza :q"
"Para revisar el menú y las opciones presionamos la letra m"
nmap <Leader>nt :NERDTreeFind<CR>

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
