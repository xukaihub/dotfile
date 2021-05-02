"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custum Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" insert blank line
nmap g<C-o> o<ESC>k
nmap gO O<ESC>j

nmap <leader>n :NERDTree<CR><C-L>:TagbarToggle<CR><C-H><C-L><C-H>
nmap <leader>tl :Tagbar<CR>
nmap <leader>tt :NERDTree<CR>

nmap <leader>l :set list<CR>
nmap <leader>ll :set nolist<CR>

" set listchars=tab:▸\ ,eol:¬\,
" set listchars=tab:→\ ,
set listchars=tab:▸\ ,

"Invisible character colors
highlight NonText guifg=#4a4a59
highlight SpecialKey guifg=#4a4a59
