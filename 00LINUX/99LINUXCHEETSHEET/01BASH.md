# BASH
Written by [BJ Kim](http://about.me/byungju.kim)

## 

## Bash Variables

- env : show environment variables

- $PATH

- $HOME

- $SHELL

- $OLDPWD

- export $NAME = value

## Command line shortcut

- CTRL-c - suspend current command

- CTRL-z - sleep current command

- CTRL-a - go to the start of the line

- CTRL-e - go to the end of the line

- CTRL-u - Cut from start of the line

```
 $ cd helloYonsei
 $ cd hello<CTRL-u>Yonsei ## <CTRL-k> is the input location of the cursor
 $ Yonsei
```

- CTRL-k - cut to end of line

```
 $ cd helloYonsei
 $ cd hello<CTRL-k>Yonsei ## <CTRL-k> is the input location of the cursor
 $ cd hello
```

- CTRL-r - Search history

```
$ < CTRL-r >
(reverse-i-search)`qh': qhost
```

- !! - Repeat the last command

- !abc - Run last command starting with abc

- !abc:p - print last command starting with abc

- !$ - Last argument of previous command

- ALT- Last argument of previous command

- !* - All arguments of previous command
