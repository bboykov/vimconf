" Behave like mswin
" source $VIMRUNTIME/mswin.vim
" behave mswin

scriptencoding utf-8

" Neovim has set these as default
" https://github.com/neovim/neovim
if !has('nvim')
  set nocompatible

  syntax on                      " Enable syntax highlighting
  filetype plugin indent on      " Automatically detect file types

  set autoindent                 " Indentation
  set autoread                   " Automatically read a file changed outside of vim
  set backspace=indent,eol,start " Backspace for dummies
  set complete-=i                " Exclude files completion
  set display=lastline           " Show as much as possible of the last line
  set encoding=utf-8             " Set default encoding
  set history=10000              " Maximum history record
  set hlsearch                   " Highlight search results
  set incsearch                  " Find as you type search
  set laststatus=2               " Always show status line
  set mouse=a                    " Automatically enable mouse usage
  set smartcase                  " When searching try to be smart about cases
  set ttyfast                    " Faster redrawing
  set viminfo+=!                 " Viminfo include !
  set wildmenu                   " Show list instead of just completing

  set ttymouse=xterm2

endif

set fileformats=unix,dos,mac " Use Unix as the standard file type
set fileformat=unix          " Default format. Necessary under Windows!
set background=dark          " Assume dark background
set shortmess=atOI           " No help Uganda information, and overwrite read messages to avoid PRESS ENTER prompts
set ignorecase               " Case sensitive search
set smartcase                " Case sensitive when uc present
set scrolljump=5             " Line to scroll when cursor leaves screen
set scrolloff=3              " Minumum lines to keep above and below cursor
set cursorline               " Highlight current line
" Default tabs to 2 spaces
" Ref and more settings here: http://tedlogan.com/techblog3.html
set shiftwidth=2           " Determines the amount of whitespace to add in normal mode
set softtabstop=2           " Fine tunes the amount of white space to be added
set shiftwidth=2
set expandtab                " When on uses space instead of tabs
set splitright               " Puts new vsplit windows to the right of the current
set splitbelow               " Puts new split windows to the bottom of the current
set autowrite                " Automatically write a file when leaving a modified buffer
set mousehide                " Hide the mouse cursor while typing
set hidden                   " Allow buffer switching without saving
set t_Co=256                 " Use 256 colors
set ruler                    " Show the ruler
set showcmd                  " Show partial commands in status line and Selected characters/lines in visual mode
set showmode                 " Show current mode in command-line
set showmatch                " Show matching brackets/parentthesis
set matchtime=5              " Show matching time
set report=0                 " Always report changed lines
set linespace=0              " No extra spaces between rows
set nobackup
set noswapfile
set nowritebackup
" show hidden characters in Vim
set list
" Folding
set foldenable
set foldmarker={,}
set foldlevel=0
set foldmethod=marker
" set foldcolumn=3
set foldlevelstart=99

set relativenumber                   " Relative numbers on
set number                           " Line numbers on
set fillchars=vert:\ ,stl:\ ,stlnc:\
" highlight clear SignColumn           " SignColumn should match background
" highlight clear LineNr             " Current line number row will have same background color in relative mode



" http://stackoverflow.com/questions/6427650/vim-in-tmux-background-color-changes-when-paging/15095377#15095377
set t_ut=

" Tab completion
set winminheight=0
set wildmode=list:longest,full
" Old config. Bash-style tab completion
" set wildmode=longest,list
" set wildmenu

nmap <leader>l :set list!<CR>
set listchars=tab:→\ ,eol:↵,trail:▢,extends:↷,precedes:↶

set whichwrap+=<,>,h,l  " Allow backspace and cursor keys to cross line boundaries

set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936

set wildignore+=*swp,*.class,*.pyc,*.png,*.jpg,*.gif,*.zip
set wildignore+=*/tmp/*,*.o,*.obj,*.so     " Unix
set wildignore+=*\\tmp\\*,*.exe            " Windows

if has('unnamedplus')
  set clipboard=unnamedplus,unnamed
else
  set clipboard+=unnamed
endif

""" persistent_undo {
" Put plugins and dictionaries in this dir
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" Keep undo history across sessions by storing it in a file
if has('persistent_undo')
  let myUndoDir = expand(vimDir . '/undodir')
  " Create dirs
  call system('mkdir ' . vimDir)
  call system('mkdir ' . myUndoDir)
  let &undodir = myUndoDir
  set undofile             " Persistent undo
  set undolevels=1000      " Maximum number of changes that can be undone
  set undoreload=10000     " Maximum number lines to save for undo on a buffer reload
endif
""" }

""" GUI settings {
if has('gui_running')
  set lines=999 columns=999 " start gVim maximized
  set guioptions-=r         " Hide the right scrollbar
  set guioptions-=L         " Hide the left scrollbar
  set guioptions-=T         " Hide the toolbar
  set guioptions-=e         " Add tab pages when indicated with 'showtabline'
  set shortmess+=c
  " No annoying sound on errors
  set noerrorbells
  set novisualbell
  set visualbell t_vb=
endif
""" }

""" Setup Font {
if has("gui_running")
  if has("gui_gtk2")
    set guifont=Inconsolata\ 12
  elseif has("gui_macvim")
    set guifont=Menlo\ Regular:h14
  elseif has("gui_win32")
    set guifont=Consolas:h14:cANSI
  endif
endif
""" }

""" Highlight column 80 as well as 120 and onward {
" http://stackoverflow.com/questions/2447109/showing-a-different-background-colour-in-vim-past-80-characters
" highlight ColorColumn ctermbg=235 guibg=#2c2d27
" let &colorcolumn=join(range(81,999),",")
let &colorcolumn="80,".join(range(120,999),",")
""" }

""" Workarounds {
" Issue - Can't open file C:\Users\<userid>\AppData\Local\Temp\... Error
" https://github.com/VundleVim/Vundle.vim/issues/575
" http://stackoverflow.com/questions/10612362/setting-up-gvim-on-windows/10622083#10622083
"
" if has("win16") || has("win32") || has("win64")
"   if &shell=~#'bash$'
"     set shell=$COMSPEC " sets shell to correct path for cmd.exe
"   endif
" endif
""" }

""" `gx` to opening url in gvim, mvim, terminal vim {

let g:netrw_browsex_viewer="google"

""" }

