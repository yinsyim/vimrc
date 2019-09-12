vimrc cheat sheet
=====

## Index
1. [my_configs.vim](/my_configs.vim)
2. [builtincommands](builtin.md)
3. [Nerdtree](nerdtree.md)


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

