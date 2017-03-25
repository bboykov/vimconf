""" Vundle add plugins {
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

" https://github.com/flazz/vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" https://github.com/godlygeek/tabular
" This plugin is prereq for plasticboy/vim-markdown
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plugin 'godlygeek/tabular'

" Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
" https://github.com/plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'

" https://github.com/mzlogin/vim-markdown-toc
Plugin 'mzlogin/vim-markdown-toc'

" Comment stuff out. Use gcc to comment out a line
" https://github.com/tpope/vim-commentary
Plugin 'tpope/vim-commentary'

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree'

" A plugin of NERDTree showing git status flags. Works with the LATEST version of NERDTree.
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Full path fuzzy file, buffer, mru, tag, ... finder for Vim.
" https://github.com/ctrlpvim/ctrlp.vim
Plugin 'ctrlpvim/ctrlp.vim'

" Git wrapper
Plugin 'tpope/vim-fugitive'

" A Vim plugin which shows a git diff in the 'gutter' (sign column)
" https://github.com/airblade/vim-gitgutter
Plugin 'airblade/vim-gitgutter'

" Snippets
" Plugin 'honza/vim-snippets'

" Indent Guides is a plugin for visually displaying indent levels in Vim.
" https://github.com/nathanaelkane/vim-indent-guides
Plugin 'nathanaelkane/vim-indent-guides'

" Lean & mean status/tabline for vim that's light as air
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Syntax checking hacks for vim
Plugin 'scrooloose/syntastic'

" parentheses, brackets, quotes, XML tags, and more
" http://www.futurile.net/2016/03/19/vim-surround-plugin-tutorial/
Plugin 'tpope/vim-surround'
" Ansible-lint (from the repo @System on Fedora)
" https://github.com/willthames/ansible-lint

" Repeat.vim remaps . in a way that plugins can tap into it.
" https://github.com/tpope/vim-repeat
Plugin 'tpope/vim-repeat'

" A vim plugin for syntax highlighting Ansible's common filetypes
Plugin 'pearofducks/ansible-vim'

" Maximizes and restores the current window in Vim.
" Plugin 'szw/vim-maximizer'

" https://github.com/freitass/todo.txt-vim
Plugin 'freitass/todo.txt-vim'

" http://vimawesome.com/plugin/supertab
Plugin 'ervandew/supertab'

" https://github.com/hashivim/vim-terraform
Plugin 'hashivim/vim-terraform'

" https://github.com/ntpeters/vim-better-whitespace
Plugin 'ntpeters/vim-better-whitespace'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" }

""" Set colorscheme from vim-colorscheme plugin {

colorscheme molokai

""" }

""" Plugin NERDTree {
"autocmd vimenter * NERDTree " start vim with NERDTree open
"" give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

""" }

""" Plugin syntastic - Syntax checking hacks for vim  {
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" }

""" syntastic configuration {
" Bash
" Install checkers:with
" pip install bashate
" Fedora: yum install ShellCheck
" let g:syntastic_sh_checkers=['shellcheck','sh','bashate']
" Ansible
" let g:syntastic_ansible_checkers=['ansible-lint']

""" }

""" vim_markdown plugin configurations {
" Markdown fenced code block languages.
" Settings from plasticboy/vim-markdown plugin
let g:vim_markdown_fenced_languages = ['viml=vim', 'bash=sh', 'ansible=yml']
let g:vim_markdown_new_list_item_indent = 2
""" }

""" SuperTab configuration {

let g:SuperTabDefaultCompletionType = "<c-n>"

""" }

""" CtrlP config {

let g:ctrlp_working_path_mode = 'ra'
" https://coderwall.com/p/5xv7sq/ctrlp-root-markers
let g:ctrlp_root_markers = ['.ctrlp']

""" }

""" vim-terraform {

let g:terraform_align=1

""" }
