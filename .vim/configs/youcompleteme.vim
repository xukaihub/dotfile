"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Youcompleteme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ycm_global_ycm_extra_conf = '~/.vim/configs/.ycm_extra_conf.py'

"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
set completeopt=longest,menu
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

"关闭加载.ycm_extra_conf.py提示
let g:ycm_confirm_extra_conf=0

 "开启 YCM 基于标签引擎
let g:ycm_collect_identifiers_from_tags_files=1

"从第2个键入字符就开始罗列匹配项
let g:ycm_min_num_of_chars_for_completion=2

"禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_cache_omnifunc=0

"语法关键字补全
let g:ycm_seed_identifiers_with_syntax=1

"在注释输入中也能补全
let g:ycm_complete_in_comments = 1

"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1

"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

"关闭语法分析报错
let g:ycm_use_clangd = 0
