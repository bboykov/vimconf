" Visual shifting (does not exit Visual mode). Keeps the selection in place
vnoremap < <gv
vnoremap > >gv

" Treat long lines as break lines (useful when moving around in them)
nmap j gj
nmap k gk
vmap j gj
vmap k gk

" :W sudo saves the file
" (useful for handling the permission-denied error)
command! W w !sudo tee % > /dev/null

" Change cursor shape for iTerm2 on macOS {
  " bar in Insert mode
  " inside iTerm2
  if $TERM_PROGRAM =~# 'iTerm'
    let &t_SI = "\<Esc>]50;CursorShape=1\x7"
    let &t_SR = "\<Esc>]50;CursorShape=2\x7"
    let &t_EI = "\<Esc>]50;CursorShape=0\x7"
  endif

  " inside tmux
  if exists('$TMUX')
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  endif
" }

" Key (re)Mappings {
" Quit normal mode
nnoremap <Leader>q  :q<CR>
nnoremap <Leader>Q  :qa!<CR>
nnoremap <Leader>x  :x<CR>
nnoremap <Leader>X  :qa!<CR>
" Move to the start of line
nnoremap H ^
" Move to the end of line
nnoremap L $
" Redo
nnoremap U <C-r>
" Quick command mode
nnoremap ; :
" Yank to the end of line
nnoremap Y y$
" Windows manipulation
" https://github.com/liuchengxu/vim-better-default/wiki/A-brief-introduction-to-key-bindins
nnoremap <Leader>ww <C-W>w
" Swap window
nnoremap <Leader>wr <C-W>r 
" delete-window 
nnoremap <Leader>wd <C-W>c
nnoremap <Leader>wq <C-W>q
" window-down
nnoremap <Leader>wj <C-W>j
" window-up
nnoremap <Leader>wk <C-W>k
" window-left
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
" window-right
nnoremap <Leader>wH <C-W>5<
nnoremap <Leader>wL <C-W>5>
nnoremap <Leader>wJ :resize +5<CR>
nnoremap <Leader>wK :resize -5<CR>
" balance-windows
nnoremap <Leader>w= <C-W>=
" split-window-below
nnoremap <Leader>ws <C-W>s
" split-window-below
nnoremap <Leader>w- <C-W>s
" split-window-vertical
nnoremap <Leader>wv <C-W>v
" split-window-vertical
nnoremap <Leader>w\| <C-W>v
" layout-double-columns
nnoremap <Leader>w2 <C-W>v
" Easier split navigations
" https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
" instead of ctrl-w then j, it’s just ctrl-j
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }



" Automatically change the current directory
" http://vim.wikia.com/wiki/Set_working_directory_to_the_current_file
autocmd BufEnter * silent! lcd %:p:h


" https://til.hashrocket.com/posts/17c44eda91-persistent-folds-between-vim-sessions
" http://stackoverflow.com/questions/2142402/code-folding-is-not-saved-in-my-vimrc
" http://vim.wikia.com/wiki/Make_views_automatic
augroup AutoSaveFolds
  autocmd BufWinLeave .* mkview
  autocmd BufWinEnter .* silent loadview
augroup END


autocmd InsertEnter * :set number norelativenumber  " Static numbers in insert mode
autocmd InsertLeave * :set nonumber relativenumber  " Relative numbers in normal mode
" }
