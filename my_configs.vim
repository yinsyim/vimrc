"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
syntax on
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos = "left"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => neocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => colorscheme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
" set background=light

" colorscheme ron
colorscheme Tomorrow-Night-Eighties
" colorscheme solarized

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_get_update = 0

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => others
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow to use mouse clicking
set mouse=a
