" Workarounds
" Issue - Can't open file C:\Users\<userid>\AppData\Local\Temp\... Error
" https://github.com/VundleVim/Vundle.vim/issues/575
" http://stackoverflow.com/questions/10612362/setting-up-gvim-on-windows/10622083#10622083
"
if has("win16") || has("win32") || has("win64")
  if &shell=~#'bash$'
    set shell=$COMSPEC " sets shell to correct path for cmd.exe
  endif
endif

