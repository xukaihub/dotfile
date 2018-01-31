"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Airline setting 
" """""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_theme='solarized'
"let g:airline_theme='cobalt2'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1

let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
let g:airline_symbols = {}
endif

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
