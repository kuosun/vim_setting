" vundle set start ---------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" alternatively, pass a path where Vundle should install plugins
"let path = '~/some/path/here'
"call vundle#rc(path)

" let Vundle manage Vundle, required
Bundle 'gmarik/vundle'

" The following are examples of different formats supported.
" Keep Plugin commands between here and filetype plugin indent on.
" scripts on GitHub repos
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
" scripts from http://vim-scripts.org/vim/scripts.html
Bundle 'L9'
Bundle 'FuzzyFinder'
" scripts not on GitHub
Bundle 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Bundle 'file:///home/gmarik/path/to/plugin'

" file browser
Bundle 'scrooloose/nerdtree'

" tab auto complete
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
Bundle "garbas/vim-snipmate"
Bundle "honza/vim-snippets"

" to show variable and function
Bundle 'taglist.vim'

" autocomplete pop
Bundle 'othree/vim-autocomplpop'

" -------

filetype plugin indent on     " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Plugin commands are not allowed.
" Put your stuff after this line

" vundle set end ---------------

" utf-8
set encoding=utf-8

" set 4 space tab
set tabstop=4
set shiftwidth=4
set expandtab
retab

" php autocomplete
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP

let g:molokai_original = 1
let g:rehash256 = 1

" use 256 colors when possible
if &term =~? 'mlterm\|xterm\|xterm-256\|screen-256'
    let &t_Co = 256
    colorscheme fisa_php
else
    colorscheme delek 
endif

" for line number
" set nu

" color
" colorscheme fisa

" high light
set hls

" NERD tree
" toggle nerdtree display use F3
map <F3> :NERDTreeToggle<CR>
" open nerdtree with the current file selected
nmap ,t :NERDTreeFind<CR>
" don't show these file types
let NERDTreeIgnore = ['\.pyc$', '\.pyo$']
" set NERD tree arrow
if &termencoding !=# 'utf-8' 
    let NERDTreeDirArrows = 0
endif

" taglist
" use F5 to show function & variable list
map <F2> :Tlist <CR>

"PHP Auto Completion"                                                                 
au FileType php call PHPFuncList()  
function PHPFuncList()
    set dictionary-=/home/ubuntu/.vim/function_dictionary/php_function.txt
    set dictionary+=/home/ubuntu/.vim/function_dictionary/php_function.txt
    set complete-=k complete+=k
endfunction

syntax on

