" Plugins
if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	  echo "Downloading junegunn/vim-plug to manage plugins..."
	  silent !mkdir -p ~/.config/nvim/autoload/
	  silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	  autocmd VimEnter * PlugInstall
  endif

  call plug#begin('~/.config/nvim/plugged')
    "Plug 'tpope/vim-surround'
    Plug 'scrooloose/nerdtree'
    "Plug 'junegunn/goyo.vim'
    Plug 'PotatoesMaster/i3-vim-syntax'
    "Plug 'jreybert/vimagit'
    "Plug 'lukesmithxyz/vimling'
    "Plug 'vimwiki/vimwiki'
    Plug 'bling/vim-airline'
    Plug 'tpope/vim-commentary'
    "Plug 'kovetskiy/sxhkd-vim'
    Plug 'pangloss/vim-javascript'
    Plug 'mxw/vim-jsx'
    Plug 'junegunn/fzf', { 'do': './install --bin' }
    Plug 'junegunn/fzf.vim'
  call plug#end()

  let mapleader="\<space>"
  nnoremap <C-J> <C-W><C-J>
  nnoremap <C-K> <C-W><C-K>
  nnoremap <C-L> <C-W><C-L>
  nnoremap <C-H> <C-W><C-H>
  nnoremap <c-p> :Files<cr>
  nnoremap <c-n> :NERDTree<cr>

  set inccommand=split


  set number relativenumber " Exibe linhas
	set encoding=utf-8
	syntax on
	set nocompatible
	set showcmd
"  autocmd vimenter * NERDTree
	filetype plugin indent on

  " Identação
	set tabstop=2 shiftwidth=2 " Muda o tab para 2 espaços
	set expandtab 
	set backspace=indent,eol,start

  " Busca
	set hlsearch
	set incsearch
	set ignorecase
	set smartcase

  set hidden " Mantém o arquivo aberto no buffer
