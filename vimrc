" >>>>>>>>>>>>>>>>>>>>>>>>>>>
" Vundle - vim plugin manager
" >>>>>>>>>>>>>>>>>>>>>>>>>>>
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Bundle 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'taglist.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Bundle 'AutoClose'

call vundle#end()            " required
filetype plugin indent on    " required

" Brief help
" " :PluginList       - lists configured plugins
" " :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" " :PluginSearch foo - searches for foo; append `!` to refresh local cache
" " :PluginClean      - confirms removal of unused plugins; append `!` to
" auto-approve removal
" "
" " see :h vundle for more details or wiki for FAQ
" " Put your non-Plugin stuff after this line

" ---------------
" set status line
" ---------------
set laststatus=2
" " enable powerline-fonts
let g:airline_powerline_fonts = 1
" " enable tabline
let g:airline#extensions#tabline#enabled = 1
" " set left separator
let g:airline#extensions#tabline#left_sep = ' '
" " set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" " show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

" -------------
" set solarized
" -------------
syntax enable
set background=dark
set t_Co=16
let g:solarized_termcolors=256
colorscheme solarized

" ------------
" set NERDTree
" ------------
" " set arrows on NERDTree
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '>'
let g:NERDTreeDirArrowCollapsible = '^'
" " set hotkey to toggle NERDTree
" " This is temp. set to deisabled due to
" " the vim-multiple-cursors plugin.
map <F9> :NERDTreeToggle<CR>

" -----------
" set taglist
" -----------
" " set hotkey to toggle taglist
map <leader>t :Tlist<CR>

" >>>>>>>>>>>>>>>>>>>>>
" vim built-in settings
" >>>>>>>>>>>>>>>>>>>>>
" " display line numbers
set nu
" " set tab = 4-space wide
set tabstop=4
set softtabstop=4
" " set auto-indent
set autoindent
" " set smartindent
set smartindent
" " show command on status bar
set showcmd
" " show match ()'s
set showmatch
" " show cursor's line
set cursorline 
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" vim built-in function mapping
" >>>>>>>>>>>>>>>>>>>>>>>>>>>>>
" " Ctrl-w [ and Ctrl-w ] to move around buffer
map <C-w>[ :bprev<CR>
map <C-w>] :bnext<CR>
