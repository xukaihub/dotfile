"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Custum Mappings 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
no <down> ddp
no <left> <Nop>
no <right> <Nop>
no <up> ddkP
no <left> <Nop>
vno <left> <Nop>
vno <left> <Nop>
vno <left> <Nop>

" ctrl+f save file 
imap <C-f> <ESC>:w<CR>

" insert blank line
nmap g<C-o> o<ESC>k
nmap gO O<ESC>j

map <F2> :bn<CR>

imap <C-L> <C-X><C-O><C-P>
imap <F3> <left>
imap <F4> <right>

nmap <leader>n :NERDTree<CR><C-L>:TagbarToggle<CR><C-H><C-L><C-H>
nmap <leader>h <C-*><C-#>
