" Global {{{
set nocompatible
setglobal modeline

" colors
set t_Co=256
syntax on
set background=dark
colorscheme Tomorrow-Night
set t_ut= " tmux + vim + background overwrite fix

" vundle
filetype off
filetype plugin indent off
set runtimepath+=~/.vim/bundle/vundle/
set runtimepath+=$GOROOT/misc/vim
call vundle#rc()
Bundle 'gmarik/vundle'

" match html tags
set matchpairs+=<:>
set showmatch

" mess
set mouse=a
set mousehide
set shortmess=a
set viewoptions=folds,options,cursor,unix,slash
set number
set backspace=2
" Don't redraw while executing macros
set lazyredraw
" Return to last edit position when opening files
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \ exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%
set cursorline
set linespace=0
set splitright
set splitbelow
set noequalalways
set winminheight=0
" Allow using the repeat operator with a visual selection
vnoremap . :normal .<CR>

" buffers
set hidden
set autoread
set title
set nostartofline
set encoding=utf-8
set fileencodings=utf-8

" diff
set sessionoptions+=buffers,curdir
set diffopt=filler,iwhite,vertical

" fast mode
set ttyfast
set showcmd
set noswapfile

" silent
set visualbell
set t_vb=
set whichwrap=<,>,[,]
" }}}

" Backups {{{
set backup

if has("persistent_undo")
    if !filewritable($HOME."/.vim/undo")
       call mkdir($HOME."/.vim/undo", "p")
    endif

    set undodir=$HOME/.vim/undo/
    set undofile
endif

if !filewritable($HOME."/.vim/backup")
   call mkdir($HOME."/.vim/backup", "p")
endif

set backupdir=$HOME/.vim/backup
" }}}

" Search {{{
set incsearch
set hlsearch
set smartcase
" }}}

" Indentation {{{
set autoindent
set expandtab
set shiftwidth=4
set softtabstop=4
set tabstop=4

" Save visual selection
:vnoremap < <gv
:vnoremap > >gv

" Display columns wider than 80
if exists('+colorcolumn')
    set colorcolumn=80
endif

if (&termencoding ==# "utf-8") || has("gui_running")
    set list listchars=tab:»·,trail:·,extends:…,nbsp:‗
else
    set list listchars=tab:>-,trail:.,extends:>,nbsp:_
endif
" }}}

" Map {{{
inoremap jj <ESC>
set pastetoggle=<F2>

set wildignore=*.o,*.obj,*.bak,*.exe
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F5> :b <C-Z>

" direct numbers in normal mode
" french keyboard only
noremap & 1
noremap é 2
noremap " 3
noremap ' 4
noremap ( 5
noremap - 6
noremap è 7
noremap _ 8
noremap ç 9
noremap à 0
noremap 1 &
noremap 2 é
noremap 3 "
noremap 4 '
noremap 5 (
noremap 6 -
noremap 7 è
noremap 8 _
noremap 9 ç
noremap 0 à

map Y y$

let mapleader = ","
" }}}

" Bundles {{{
Bundle 'airblade/vim-gitgutter'
Bundle 'fatih/vim-go'

Bundle 'Raimondi/delimitMate'
let g:delimitMate_expand_cr=1

Bundle 'kien/rainbow_parentheses.vim'
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound

Bundle 'bling/vim-airline'
set laststatus=2
let g:airline_left_sep=' '
let g:airline_right_sep=' '

Bundle 'scrooloose/syntastic'
let g:syntastic_check_on_open=1
let g:syntastic_auto_jump=0
let g:syntastic_auto_loc_list=0
let g:syntastic_enable_highlighting = 1

let g:syntastic_javascript_jslint_args = "--predef=Ext --predef=i18n --predef=Sivm --predef=Extensible --predef=valid --predef=sivmConfig --sloppy"

Bundle 'guns/vim-clojure-static'
Bundle 'tpope/vim-fireplace'

Bundle 'scrooloose/nerdtree'
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
let NERDTreeIgnore=['\.pyc', '\~$', '\.swo$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']

Bundle 'kien/ctrlp.vim'

filetype plugin indent on
" }}}
