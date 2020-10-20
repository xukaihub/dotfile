"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Ctags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
map <F6> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR><CR>
set tags=./tags,tags;$HOME
" set autochdir
" use the command followed to generate systags: 
" ctags -I __THROW --file-scope=yes --langmap=c:+.h --languages=c,c++ --links=yes --c-kinds=+p -R -f ~/.vim/tags /usr/include /usr/local/include
