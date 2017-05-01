# Linux Command Line Cheat Sheet

by [BJ Kim](https://about.me/byungju.kim)

## Piping and I/O redirection

read more details in [Piping and IO directiom](./)

 - **<** read file to the *cmd*.

```
  cmd < file
```

 - **>** standard output (stdout) to file (overwrite)

```
  cmd > file
```

 - **> /dev/null** discard stout of the *cmd*

```
 cmd > /dev/null
```

 - **>>** standard output (stdout) to file (append)
 
```
 cmd >> /dev/null
```
 
  - **2>** Error output (stderr) of cmd to file

```
 cmd 2> file
```

 - **1>&2** stdout to same place as stderr

```
  cmd 1>&2
```

 - **2>&1** stderr to same place as stdout

```
  cmd 2>&1
```

 - **|** stout of cmd1 to cmd2

```
 cmd1 | cmd2
```

 - **|&** stderr of cmd1 to cmd2

```
 cmd1 |& cmd2
```


# glossary

*cmd* - any command in linux
