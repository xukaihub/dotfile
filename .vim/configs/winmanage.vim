"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => NERDTree, Winmanager
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDChristmasTree=1
let g:persistentBehaviour=0
let g:NERDTree_title="[NERDTree]"
let g:tagbar_title="[Tagbar]"
let g:winManagerWindowLayout="NERDTree|Tagbar"
let g:tagbar_width=25
let NERDTreeWinSize=25

function! NERDTree_Start()
    exec 'NERDTree'
endfunction

function! NERDTree_IsValid()
  return 1
endfunction
