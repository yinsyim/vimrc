<p align="center"> vimrc </p>
=====

# <p align="center"> vimrc </p>



- [The Ultimate vimrc](#the-ultimate-vimrc)
  * [How to install the Awesome version?](#how-to-install-the-awesome-version-)
    + [Install for your own user only](#install-for-your-own-user-only)
    + [Install for multiple users](#install-for-multiple-users)
  * [How to install the Basic version?](#how-to-install-the-basic-version-)
  * [Included Plugins](#included-plugins)
  * [Included color schemes](#included-color-schemes)
  * [Included modes](#included-modes)
  * [my plugins](#my-plugins)
  * [How to include your own stuff?](#how-to-include-your-own-stuff-)
  * [Key Mappings](#key-mappings)
  * [How to uninstall](#how-to-uninstall)


# The Ultimate vimrc


> Over the last 10 years, I have used and tweaked Vim. This configuration is the ultimate vimrc (or at least my version of it).
>
> There are two versions:
>
> * **The Basic**: If you want something small just copy [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim) into your ~/.vimrc and you will have a good basic setup
> * **The Awesome**: Includes a ton of useful plugins, color schemes, and configurations
>
> I would, of course, recommend using the awesome version.
>
> <p align="right">--amix</p>  


## How to install the Awesome version?
### Install for your own user only
The awesome version includes a lot of great plugins, configurations and color schemes that make Vim a lot better. To install it simply do following from your terminal:

    git clone --recursive --depth 1 https://github.com/yinsyim/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_awesome_vimrc.sh
            
### Install for multiple users
To install for multiple users, the repository needs to be cloned to a location accessible for all the intended users.

    git clone --recursive --depth 1 https://github.com/yinsyim/vimrc.git /opt/vim_runtime
    sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime user0 user1 user2
    # to install for all users with home directories
    sh ~/.vim_runtime/install_awesome_parameterized.sh /opt/vim_runtime --all
                    
Naturally, `/opt/vim_runtime` can be any directory, as long as all the users specified have read access.


## How to install the Basic version?

The basic version is just one file and no plugins. Just copy [basic.vim](https://github.com/amix/vimrc/blob/master/vimrcs/basic.vim) and paste it into your vimrc.

The basic version is useful to install on remote servers where you don't need many plugins, and you don't do many edits.

    git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
    sh ~/.vim_runtime/install_basic_vimrc.sh


## Included Plugins

I recommend reading the docs of these plugins to understand them better. Each plugin provides a much better Vim experience!

* [ack.vim](https://github.com/mileszs/ack.vim): Vim plugin for `the_silver_searcher` (ag) or ack -- a wicked fast grep
* [bufexplorer.zip](https://github.com/vim-scripts/bufexplorer.zip): Quickly and easily switch between buffers. This plugin can be opened with `<leader+o>`
* [ctrlp.vim](https://github.com/ctrlpvim/ctrlp.vim): Fuzzy file, buffer, mru and tag finder. It's mapped to `<Ctrl+F>`
* [goyo.vim](https://github.com/junegunn/goyo.vim) and [vim-zenroom2](https://github.com/amix/vim-zenroom2): 
* [lightline.vim](https://github.com/itchyny/lightline.vim): A light and configurable statusline/tabline for Vim
* [NERD Tree](https://github.com/scrooloose/nerdtree): A tree explorer plugin for vim
* [mru.vim](https://github.com/vim-scripts/mru.vim): Plugin to manage Most Recently Used (MRU) files. This plugin can be opened with `<leader+f>`
* [open_file_under_cursor.vim](https://github.com/amix/open_file_under_cursor.vim): Open file under cursor when pressing `gf`
* [pathogen.vim](https://github.com/tpope/vim-pathogen): Manage your vim runtimepath 
* [snipmate.vim](https://github.com/garbas/vim-snipmate): snipmate.vim aims to be a concise vim script that implements some of TextMate's snippets features in Vim
* [ale](https://github.com/w0rp/ale): Syntax and lint checking for vim (async)
* [vim-commentary](https://github.com/tpope/vim-commentary): Comment stuff out.  Use `gcc` to comment out a line (takes a count), `gc` to comment out the target of a motion. `gcu` uncomments a set of adjacent commented lines.
* [vim-expand-region](https://github.com/terryma/vim-expand-region): Allows you to visually select increasingly larger regions of text using the same key combination
* [vim-fugitive](https://github.com/tpope/vim-fugitive): A Git wrapper so awesome, it should be illegal
* [vim-indent-object](https://github.com/michaeljsmith/vim-indent-object): Defines a new text object representing lines of code at the same indent level. Useful for python/vim scripts
* [vim-multiple-cursors](https://github.com/terryma/vim-multiple-cursors): Sublime Text style multiple selections for Vim, CTRL+N is remapped to CTRL+S (due to YankRing)
* [vim-yankstack](https://github.com/maxbrunsfeld/vim-yankstack): Maintains a history of previous yanks, changes and deletes
* [vim-zenroom2](https://github.com/amix/vim-zenroom2) Remove all clutter and focus only on the essential. Similar to iA Writer or Write Room


## Included color schemes

* [peaksea](https://github.com/vim-scripts/peaksea): The default
* [vim-colors-solarized](https://github.com/altercation/vim-colors-solarized)
* [vim-irblack](https://github.com/wgibbs/vim-irblack)
* [mayansmoke](https://github.com/vim-scripts/mayansmoke)
* [vim-pyte](https://github.com/therubymug/vim-pyte)


## Included modes

* [vim-coffee-script](https://github.com/kchmck/vim-coffee-script)
* [vim-less](https://github.com/groenewege/vim-less)
* [vim-bundle-mako](https://github.com/sophacles/vim-bundle-mako)
* [vim-markdown](https://github.com/tpope/vim-markdown)
* [nginx.vim](https://github.com/vim-scripts/nginx.vim): Highlights configuration files for nginx
* [vim-go](https://github.com/fatih/vim-go)


## my plugins

* [neocomplete.vim](https://github.com/yinsyim/neocomplete.vim)
* [python-mode](https://github.com/yinsyim/python-mode)
* [vim-colors-solarized](https://github.com/yinsyim/vim-colors-solarized)
* [tomorrow-theme/colors](https://github.com/yinsyim/vimrc/tree/master/my_plugins/tomorrow-theme/colors)


## How to include your own stuff?

After you have installed the setup, you can create **~/.vim_runtime/my_configs.vim** to fill in any configurations that are important for you. For instance, my **my_configs.vim** looks like this:
```vim
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
" set paste and nopaste
cmap sp set paste
cmap snp set nopaste
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
" to close the adjacent window in nerdtree, especially the notification window in python-mode 
nmap <leader>jq <C-j>:q<CR>
nmap <leader>kq <C-k>:q<CR>
nmap <leader>hq <C-h>:q<CR>
nmap <leader>lq <C-l>:q<CR>
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
map <C-n> :NERDTreeToggle<CR>
" leave 7 lines on the top and at the bottom when scroll
set scrolloff=7
```

You can also install your plugins, for instance, via pathogen you can install [vim-rails](https://github.com/tpope/vim-rails):
```sh
# cd ~/.vim_runtime/my_plugins/
# git submodule add git://github.com/tpope/vim-rails.git
then edit the pathogen part in ~/.vim_runtime/my_configs.vim if needed
``` 

## Key Mappings

The [leader](http://learnvimscriptthehardway.stevelosh.com/chapters/06.html#leader) is `,`, so whenever you see `<leader>` it means `,`.


## How to uninstall
Just do following:
* Remove `~/.vim_runtime`
* Remove any lines that reference `.vim_runtime` in your `~/.vimrc`
