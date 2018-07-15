set nocompatible
""set term=builtin_ansi
set t_Co=256
" >>>>>>>>>>>>>>>>>>>>>>>>>>>
" vim-plug plugin manager
" >>>>>>>>>>>>>>>>>>>>>>>>>>>
" changed from vundle to vim-plug
" but the plugin path is stayed as ~/.vim/bundle
"
" Install script
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py
  endif
endfunction

call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'altercation/vim-colors-solarized'
Plug 'scrooloose/nerdtree',  { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-fugitive'
Plug 'Yggdroot/indentLine'
Plug 'mileszs/ack.vim'
Plug 'justinj/vim-pico8-syntax'
Plug 'scrooloose/syntastic'
Plug 'magic-dot-files/TagHighlight'
Plug 'myusuf3/numbers.vim'
Plug 'majutsushi/tagbar'
Plug 'tpope/vim-commentary'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'derekwyatt/vim-scala'
Plug 'mbbill/undotree'
Plug 'gregsexton/gitv', {'on': ['Gitv']}
Plug 'easymotion/vim-easymotion'
call plug#end()

" vim-plug help
" PlugInstall [name ...] [#threads]     Install plugins
" PlugUpdate [name ...] [#threads]  Install or update plugins
" PlugClean[!]  Remove unused directories (bang version will clean without
" prompt)
" PlugUpgrade   Upgrade vim-plug itself
" PlugStatus    Check the status of plugins
" PlugDiff  Examine changes from the previous update and the pending changes
" PlugSnapshot[!] [output path]     Generate script for restoring the current
" snapshot of the plugins

" ---------------
" set vim-airline
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
" " use with tagbar plugin
let g:airline#extensions#tagbar#enabled = 1

" -------------
" Color theme settings
" -------------
syntax enable
set background=dark
""let g:solarized_termcolors=256
colorscheme solarized

" --- for custom theme
"colorscheme bob1996w-jungle
"highlight Normal ctermbg=NONE
"highlight nonText ctermbg=NONE
" "highlight Normal ctermfg=grey ctermbg=black

" ------------
" set NERDTree
" ------------
" " set arrows on NERDTree
let g:NERDTreeDirArrows = 1
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" " set hotkey to toggle NERDTree
" " This is temp. set to deisabled due to
" " the vim-multiple-cursors plugin.
map <F9> :NERDTreeToggle<CR>
map <leader>n :NERDTreeToggle<CR>

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
let g:numbers_exclude = ['unite', 'tagbar', 'startify', 'gundo', 'vimshell', 'w3m', 'nerdtree', 'undo', 'diff']
nnoremap <leader>3 :NumbersToggle<CR>
nnoremap <leader>4 :NumbersOnOff<CR>

" -----------
" set YouCompleteMe
" -----------
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'

" -----------
" set undotree
" -----------
map <C-w>u :UndotreeToggle<CR>
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

" >>>>>>>>>>>>>>>>>>>>>
" vim built-in settings
" >>>>>>>>>>>>>>>>>>>>>
" " display line numbers
set number
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
