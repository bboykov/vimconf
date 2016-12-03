set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has("win32")
  set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
  call vundle#begin('$USERPROFILE/vimfiles/bundle/')
else
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
endif

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Color theme molokai
Plugin 'tomasr/molokai'

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree. 
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Syntax checking hacks for vim 
Plugin 'scrooloose/syntastic'

" parentheses, brackets, quotes, XML tags, and more
Plugin 'tpope/vim-surround'
" Ansible-lint (from the repo @System on Fedora)
" https://github.com/willthames/ansible-lint

" A vim plugin for syntax highlighting Ansible's common filetypes
Plugin 'pearofducks/ansible-vim'

" Maximizes and restores the current window in Vim.
Plugin 'szw/vim-maximizer'

" Comment stuff out.
Plugin 'tpope/vim-commentary'

" Vimwiki
Plugin 'vimwiki/vimwiki'

" The vim-notes plug-in makes it easy to manage your notes
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-notes'

" Syntax highlighting, matching rules and mappings for the original Markdown
" and extensions.
Plugin 'plasticboy/vim-markdown'

" Snippets
Plugin 'honza/vim-snippets'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


" Settings

colorscheme molokai

" Column 80 marker
highlight OverLength ctermbg=darkred ctermfg=white guibg=#660000
match OverLength /\%81v.\+/

" Plugin NERDTree 

"autocmd vimenter * NERDTree " start vim with NERDTree open
"" give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR> 


""" Plugin syntastic - Syntax checking hacks for vim 
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Bash 
" Install checkers:with 
" pip install bashate
" Fedora: yum install ShellCheck 
let g:syntastic_sh_checkers=['shellcheck','sh','bashate'] 
" Ansible
let g:syntastic_ansible_checkers=['ansible-lint']
