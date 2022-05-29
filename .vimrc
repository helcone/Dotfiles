set spelllang=es
set spellsuggest=best,9
nnoremap <silent> <F11> :set spell!<cr>
inoremap <silent> <F11> <C-O>:set spell!<cr>
syntax on "  Detects and colors syntax for vim
colorscheme koehler
set number "  Set numbers of lines
set autoindent "  Automatically align indentation
set smartindent "  Indent base on langugae
set autochdir "  when use tabs and windows uses pwd
"lua require('plugins')
" Copy and paste
vmap <C-c> "+y
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>
