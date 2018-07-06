if exists("b:did_ftplugin")
  finish
endif
let b:did_ftplugin = 1

setlocal expandtab
setlocal shiftwidth=4
setlocal tabstop=4

setlocal textwidth=100

let g:pyindent_open_paren = '&sw'
let g:pyindent_nested_paren = '&sw'
let g:pyindent_continue = '&sw'
