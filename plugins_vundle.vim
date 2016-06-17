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

" The NERD tree allows you to explore your filesystem and to open files and directories.
Plugin 'scrooloose/nerdtree'

" Git wrapper
Plugin 'tpope/vim-fugitive'

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
