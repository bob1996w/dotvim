set nocompatible
""set term=builtin_ansi
set t_Co=256
" >>>>>>>>>>>>>>>>>>>>>>>>>>>
" Vundle - vim plugin manager
" >>>>>>>>>>>>>>>>>>>>>>>>>>>
" "set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" "Bundle 'altercation/vim-colors-solarized'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Bundle 'taglist.vim'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'tpope/vim-surround'
Plugin 'tpope/vim-fugitive'
Bundle 'AutoClose'
Plugin 'Yggdroot/indentLine'
Plugin 'mileszs/ack.vim'
Plugin 'justinj/vim-pico8-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'magic-dot-files/TagHighlight'
Bundle "myusuf3/numbers.vim"
Plugin 'majutsushi/tagbar'
Plugin 'tpope/vim-commentary'
Plugin 'bufexplorer.zip'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'Valloric/YouCompleteMe'
""Plugin 'derekwyatt/vim-scala'
""Plugin 'smancill/conky-syntax.vim'

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
" Color theme settings
" -------------
" "syntax enable
" "set background=dark
""let g:solarized_termcolors=256
""colorscheme solarized
colorscheme 256-jungle
highlight Normal ctermbg=NONE
highlight nonText ctermbg=NONE
" "highlight Normal ctermfg=grey ctermbg=black

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
map <leader>n :NERDTreeToggle<CR>
" -----------
" set taglist
" -----------
" " set hotkey to toggle taglist
""map <leader>t :Tlist<CR>
" -----------
" set tagbar
" -----------
nmap <F8> :TagbarToggle<CR>
map <leader>t :TagbarToggle<CR>
" ----------
" set IndentLine
" --------------
" " set indentline color
let g:indentLine_color_term = 246
" " set hotkey
nmap <leader>i :IndentLinesToggle<CR>
" -----------
" set synastic
" -----------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" -----------
" set CtrlP
" -----------
map <C-p> :CtrlP

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" ------------
" set numbers
" ------------
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'nerdtree']
nnoremap <F3> :NumbersToggle<CR>
nnoremap <F4> :NumbersOnOff<CR>

" -----------
" set YouCompleteMe
" -----------
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" -----------
" set cursor type, only work in xfce4 terminal
" -----------
" -----------
" set cursor type
" -----------
" >>>>>>>>>>>>>>>>>>>>>
" vim built-in settings
" >>>>>>>>>>>>>>>>>>>>>
" " display line numbers
set nu
" tab-space problems
" " set tab = 4-space wide
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

" " set auto-indent
set autoindent
" " show command on status bar
set showcmd
" " show match ()'s
set showmatch
" " show cursor's line
set cursorline
autocmd InsertEnter,InsertLeave * set cul!

" " Ctrl-w [ and Ctrl-w ] to move around buffer
map <C-w>[ :bprev<CR>
map <C-w>] :bnext<CR>
" " display non-character
nmap <leader>l :set list!<CR>
" " set non-character chars display
set listchars=tab:>\ ,eol:¬
