" settings

" Behave like mswin
source $VIMRUNTIME/mswin.vim
behave mswin

" Use Unix as the standard file type
set fileformats=unix,dos,mac
set fileformat=unix " Default format. Necessary under Windows!


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

" Setup Font
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h14:cANSI
  endif
endif

" Show statusline
set laststatus=2

" Match and search
set ignorecase " Case-insensitive search
set hlsearch " Highlight search results
set smartcase " When searching try to be smart about cases 

"Always show current position
set ruler

" Show matching brackets when text indicator is over them
set showmatch

" Number of things to remember in history.
set history=256 

" When a file has been detected to have been changed outside of Vim and
" it has not been changed inside of Vim, automatically read it again.
set autoread

" Default to soft tabs, 2 spaces
set expandtab
set sw=2
set sts=2
" Except for Makefiles: Hard tabs of width 2
autocmd FileType make set ts=2
" And Markdown
autocmd FileType mkd set sw=4
autocmd FileType mkd set sts=4
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd BufRead,BufNewFile *.cql set filetype=cql
" And Java
autocmd FileType java set sw=2


" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8



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

" Easier split navigations
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" More natural split opening
set splitbelow
set splitright



