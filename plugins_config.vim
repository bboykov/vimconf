" colorscheme  
colorscheme molokai

" Column 80 marker
highlight OverLength ctermbg=darkred ctermfg=white guibg=#660000
match OverLength /\%81v.\+/

" NERDTree settings
" start vim with NERDTree open
"autocmd vimenter * NERDTree

" give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>


" Syntax checking hacks for vim 
" Plugin 'scrooloose/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
