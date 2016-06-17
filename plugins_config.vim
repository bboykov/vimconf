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

