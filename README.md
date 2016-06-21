# My vim configuration files 

## Prerequisites
- Install [Vundle](https://github.com/VundleVim/Vundle.vim)  

### Install Vundle on Linux
Just clone the repo and move on to Setup section  
`git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`  

### Install Vundle on Windows
Follow [Vundle for Windows](https://github.com/VundleVim/Vundle.vim/wiki/Vundle-for-Windows) wiki page  

## Setup
- Clone the repo  
`git clone https://github.com/bboykov/vimconf.git ~/vimconf`  

- add in your [main vimrc](http://vim.wikia.com/wiki/Open_vimrc_file) configuration.  
`source ~/vimconf/main.vim`  

- Install plugins with vundle  
Launch `vim` and run `:PluginInstall`  
To install from command line: `vim +PluginInstall +qall`  




