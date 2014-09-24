let mapleader = ','
let maplocalleader = ';'

" Auto-indent
nmap <leader>= gg=G``

" Press Space to turn off highlighting and clear any message already
" displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>""

" File tree browser
map \          :NERDTreeToggle<CR>
map \|         :NERDTreeFind<CR>

" Comment/un-comment
map <leader>/  <plug>NERDCommenterToggle
