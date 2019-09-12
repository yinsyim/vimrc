vimrc cheat sheet
=====


1. [my_configs.vim](/my_configs.vim)
1. [Builtin Commands](builtin.md)
1. [Nerdtree](#nerdtree)


<a id="nerdtree"></a>
## Nerdtree

Here are some frequently used commands:

| Command | Function |
| ------ | -------- |
| m  |  open the menu |
| `o` or `Enter` | open files, directories, bookmarks |
| `O` | **Recursivly** open the selected directory |
| s  | open a file in a vertical split window |
| i  | open a file in a horizontal split window |
| t  | open a file in new tab |
| x  | close the current node parent (unfold current folder) |
| X  | **Recursivly** close the current node parent (unfold folders) |
| R  | refresh |
| cd | change tree root to the selected node/directory |
| CD | change tree root to CWD |
| I  | toggle whether hidden files displayed |
| f  | toggle whether file filters are used |
| F  | toggle whether files are displayed |
| B  | toggle whether bookmark table displayed |
| q  | QUIT nerdtree window |
| A  | zoom in/out nerdtree window |

For complete usage instructions, see [Nerdtree Official Doc](https://github.com/scrooloose/nerdtree/blob/master/doc/NERDTree.txt)


## Others

### 1. switch between shell and vim (`ctl-z` + `fg`)

If you are doing some code editing, debugging and testing work, i mean,
edit files with vim -> exit vim -> test and run -> edit files again -> exit
vim -> test and run -> ... you don't have to open and close vim again and again.

`fg` (`ctl-z`) and `bg` will save you.

some shell commands:
```shell
$ jobs # shell command, list all background tasks

$ fg             # move last background task to frontground (restore executing)
$ fg % <task_id> # move background task <task_id> to frontground

$ bg             # move task to background
$ bg % <task_id> # move task <task_id> to background
$ ctl-z          # move current task to background
```

so the process can be simplified to: after finishing editing, press `ctrl-z`
to put vim process into background, now you are in shell, do your testing,
and use `fg` to call back your vim again.

