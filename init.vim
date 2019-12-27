set clipboard=unnamed

" no backup files
set nobackup
set noswapfile

" tab
set autoindent
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" display
set cursorline
set number
set showmatch
set splitright

" status line
set laststatus=2

" complement
set pumheight=10

" search
set hlsearch
set ignorecase
set incsearch
set smartcase
set wrapscan

set exrc
set secure

let g:python_host_prog  = '/usr/local/bin/python2'
let g:python3_host_prog = '/usr/local/bin/python3'
let g:ruby_host_prog = expand('~/.rbenv/shims/neovim-ruby-host')

if &compatible
  set nocompatible
endif

set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
let s:dein_cache_path = expand('~/.cache/dein')

if dein#load_state(s:dein_cache_path)
  call dein#begin(s:dein_cache_path)

  call dein#load_toml('~/.config/nvim/dein.toml', {'lazy': 0})

  call dein#end()
  call dein#save_state()
endif

if dein#check_install()
  call dein#install()
end

let g:lightline = {
  \'active': {
    \'right': [
      \['coc']
    \]
  \},
  \'component_function': {
    \'coc': 'coc$status'
  \}
\}

filetype plugin indent on
syntax enable
