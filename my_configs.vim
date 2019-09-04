"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow to use mouse clicking
set mouse=a

" Show line number
set nu

" set <leader>
let mapleader=','
" roll 10 lines
nmap J 10j
nmap K 10k
" set paste and nopaste
cmap sp set paste
cmap snp set nopaste
nmap <leader>p :set paste<CR>
nmap <leader>np :set nopaste<CR>
" to close the adjacent window in nerdtree, especially the notification window in python-mode 
nmap <leader>jq <C-j>:q<CR>
nmap <leader>kq <C-k>:q<CR>
nmap <leader>hq <C-h>:q<CR>
nmap <leader>lq <C-l>:q<CR>
" set nohighlight
nmap <leader>nh :noh<CR>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
filetype off
call pathogen#infect()
call pathogen#helptags()
execute pathogen#infect()
filetype plugin indent on
syntax on

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
" set t_Co=256 " required

" set background=dark
" set background=light

" colorscheme ron
" colorscheme Tomorrow-Night-Eighties
" colorscheme solarized
colorscheme zellner

" hi Normal guibg=NONE ctermbg=NONE

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_get_update = 0

