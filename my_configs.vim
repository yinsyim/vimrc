"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => General
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" allow to use mouse clicking
set mouse=a

" Show line number
set nu

" set <leader>
let g:mapleader=','
" roll 10 lines
noremap ( 10k
noremap ) 10j
" start a new line in insert mode
inoremap <C-o> <End><CR>
" move cursor to the end of line in insert mode
inoremap <C-a> <End>
" move cursor to the start of line in insert mode
inoremap <C-i> <Home>
" set paste and nopaste
nnoremap <leader>p :set paste<CR>
nnoremap <leader>np :set nopaste<CR>
" close or save current window
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>wq :wq<CR>
" close or save all windows
nnoremap <leader>qa :qa<CR>
nnoremap <leader>wa :wa<CR>
nnoremap <leader>wqa :wqa<CR>
" close the debug message window in python-mode
nmap <leader>j <C-j>:q<CR>
" refresh
nnoremap <leader>e :e<CR>
" set nohighlight
nnoremap <leader>nh :noh<CR>
" map 0 to soft top of line
nnoremap 0 ^
" map 9 to end of line
nnoremap 9 $
" edit my_configs.vim
nnoremap <leader>mc :e /root/.vim_runtime/my_configs.vim<CR>
" open NERDTree
nnoremap <C-n> :NERDTreeToggle<CR>
" leave 7 lines on the top and at the bottom when scroll
set scrolloff=7

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

