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
lua require('plugins')
