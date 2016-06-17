" settings

" Behave like mswin
source $VIMRUNTIME/mswin.vim
behave mswin

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


" Automatically change the current directory
" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h

