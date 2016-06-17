set nocompatible              " be iMproved, required
filetype off                  " required

" Behave like mswin
source $VIMRUNTIME/mswin.vim
behave mswin

" Automatically change the current directory
" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h


" Enable syntax highlighting
syntax enable

" Indentation
set autoindent
filetype plugin indent on

" Use OS clipboard for copypasta
set clipboard=unnamed

" No swap files, use version control instead
set noswapfile

" Turn backup off, since most stuff is in SVN, git et.c anyway...
set nobackup
set nowb

" Bash-style tab completion
set wildmode=longest,list
set wildmenu

" Show line numbers
set number

" Show statusline
set laststatus=2

" Case-insensitive search
set ignorecase

" Highlight search results
set hlsearch

" When searching try to be smart about cases 
set smartcase

"Always show current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch

" Default to soft tabs, 2 spaces
set expandtab
set sw=2
set sts=2

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac


" Except for Makefiles: Hard tabs of width 2
autocmd FileType make set ts=2
" And Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.cql set filetype=cql
" And Java
autocmd FileType java set sw=2

" Default to Unix LF line endings
set ffs=unix

" Folding
set foldmethod=syntax
set foldcolumn=1
set foldlevelstart=20

" Remove GUI bars
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" VUNDLE
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree'
" A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree. 
Plugin 'Xuyuanp/nerdtree-git-plugin'
" lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
" Color theme molokai
Plugin 'tomasr/molokai'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"
"
"
" colorscheme  and font
"colorscheme desert
"set guifont=DejaVu\ Sans\ Mono\ 12
colorscheme molokai

" Column 80 marker
highlight OverLength ctermbg=darkred ctermfg=white guibg=#660000
match OverLength /\%81v.\+/




" NERDTree settings
" start vim with NERDTree open
"autocmd vimenter * NERDTree

" give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>
