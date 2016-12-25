" Initialize Vundle and load plugins
" If you add any new plugins, remember to run :PluginInstall command to
" install them
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
" file browser
" - use <C-o> to toggle
Plugin 'scrooloose/nerdtree'
" support for NERDTree tabs
Plugin 'jistr/vim-nerdtree-tabs'
" open a file rapidly by entering part of the file name
" - use <C-p> to open the search box 
Plugin 'kien/ctrlp.vim'
" file status bar
Plugin 'vim-airline/vim-airline'
" out of box python support
" detailed commands can be found at:
" https://github.com/python-mode/python-mode/blob/develop/doc/pymode.txt
" - pylint will be launched every time you save 
" - use k to open python doc
" - use <C-c>g to go to code definition
" - use <C-c>rr to refactor code
Plugin 'python-mode/python-mode'
" auto complete facility
Plugin 'Valloric/YouCompleteMe'

call vundle#end()
filetype plugin indent on

" basic settings
syntax on
set nu
set tabstop=4
set shiftwidth=4
set expandtab
set clipboard=unnamed

" enable folding
" - use za to fold and unflod code by indention
set foldmethod=indent
set foldlevel=99

map gb :bn<cr> " move tabs of vim-airline
map gB :bp<cr>
" toggle NERDTree panel
silent! nmap <C-o> :NERDTreeToggle<CR>
" make window navigation more easier
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

" enable tabs of vim-airline
let g:airline#extensions#tabline#enabled = 1

" prevent the doc preview window while autocompleting
" (the default value is menu,preview)
set completeopt=menu

" disable python file type since we already have python-mode to do this for us 
let g:ycm_filetype_blacklist = {
    \ 'python': 1, 
\}
" enable virtualenv for python development with python-mode plugin
" if you have a python virtual env, please make sure that you enter the
" virtual envirnment before launching the VIM so that VIM could find the
" $VIRTUAL_ENV to get to know all the python load paths
let g:pymode_virtualenv = 1
let g:pymode_virtualenv_path = $VIRTUAL_ENV

" following is actually not vim settings
" just a short cheatsheet

" NAVIGATION
" - jump to last position: ''
" - jump to the last changed line: `.
" - jump to the corresponding item (like { to })

" SHOW STATUS
" - show current file path: 1<C-g> (without 1 for relative path)
