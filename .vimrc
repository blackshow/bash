set number
set ai                  " auto indenting
set history=100         " keep 100 lines of history
set ruler               " show the cursor position
syntax on               " syntax highlighting
set hlsearch            " highlight the last searched term
set nocompatible  
set nrformats= 			" not use octal and hex an binary format
set sw=2
set ts=2
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" 插件配置
Plugin 'gmarik/vundle' " vundle
Plugin 'scrooloose/nerdtree' " 文件树管理工具
Plugin 'molokai' " molokai主题
Plugin 'bling/vim-airline' " 状态栏
Plugin 'tpope/vim-commentary' " 快速注释

filetype plugin indent on
colorscheme molokai

" 快捷键配置
map <F2> :NERDTreeToggle<cr>
" 自动打开NERDTree
" autocmd vimenter * NERDTree

" 如果没有任何文件打开才自动打开NERDTree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

map <C-c> "+y
