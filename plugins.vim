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

" https://github.com/godlygeek/tabular
" This plugin is prereq for plasticboy/vim-markdown
" http://vimcasts.org/episodes/aligning-text-with-tabular-vim/
Plugin 'godlygeek/tabular'

" Syntax highlighting, matching rules and mappings for the original Markdown and extensions.
" https://github.com/plasticboy/vim-markdown
Plugin 'plasticboy/vim-markdown'

" https://github.com/mzlogin/vim-markdown-toc
Plugin 'mzlogin/vim-markdown-toc'

" https://github.com/jamshedvesuna/vim-markdown-preview
Plugin 'jamshedvesuna/vim-markdown-preview'

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

" https://github.com/vim-scripts/confluencewiki.vim
Plugin 'confluencewiki.vim'

" https://github.com/flazz/vim-colorschemes
Plugin 'flazz/vim-colorschemes'

" Base16 color themes
" https://github.com/chriskempson/base16-vim
Plugin 'chriskempson/base16-vim'

" https://github.com/tmux-plugins/vim-tmux
Plugin 'tmux-plugins/vim-tmux'

" https://github.com/tmux-plugins/vim-tmux-focus-events
Plugin 'tmux-plugins/vim-tmux-focus-events'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

""" }

silent! colorscheme molokai
" Base16 Colors
" https://github.com/chriskempson/base16-shell
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256
  source ~/.vimrc_background
endif



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
" let g:syntastic_sh_checkers=['shellcheck','sh','bashate']
" Bash
" Install checkers:with
" pip install bashate
" ShellCheck: https://github.com/koalaman/shellcheck
" Fedora: yum install ShellCheck
" Mac: brew install shellcheck
let g:syntastic_sh_checkers=['shellcheck']
" Ansible
let g:syntastic_ansible_checkers=['ansible-lint']

""" }

""" vim_markdown plugin configurations {
" Markdown fenced code block languages.
" Settings from plasticboy/vim-markdown plugin
let g:vim_markdown_fenced_languages = ['viml=vim', 'bash=sh', 'ansible=yml']
let g:vim_markdown_new_list_item_indent = 2
""" }

""" vim-markdown-preview plugin {
" Change default browser
let vim_markdown_preview_browser='Google Chrome'
" Remove the rendered preview
let vim_markdown_preview_temp_file=1
" GitHub flavoured markdown you need to install Python grip `pip install grip`
let vim_markdown_preview_github=1
" Mapping Control M
let vim_markdown_preview_hotkey='<C-m>'
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
" Override your .vimrc indentation syntax for matching files
let g:terraform_align=1
" Runs `:TerraformFmt` on save
let g:terraform_fmt_on_save=1

""" }

""" Commentary {

autocmd FileType terraform setlocal commentstring=#\ %s

""" }

""" pearofducks/ansible-vim {
let g:ansible_unindent_after_newline = 1

""" }
