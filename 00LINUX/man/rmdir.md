# rmdir

## NAME

rmdir -- remove directories

## SYNOPSIS
     
rmdir [-p] directory ...

## DESCRIPTION
     
The rmdir utility removes the directory entry specified by each directory argument, provided it is empty.

Arguments are processed in the order given.  In order to remove both a parent directory
and a subdirectory of that parent, the subdirectory must be specified first so the par-
ent directory is empty when rmdir tries to remove it.

The following option is available:

 -p      
  + Each directory argument is treated as a pathname of which all components will be removed, if they are empty, starting with the last most component.  (See rm(1) for fully non-discriminant recursive removal.)

The rmdir utility exits with one of the following values:

 0       
  + Each directory entry specified by a dir operand referred to an empty directory and was removed successfully.

 >0      
  + An error occurred.

## SEE ALSO

```     
 man rm(1)
```

## STANDARDS
     
The rmdir command is expected to be IEEE Std 1003.2 (``POSIX.2'') compatible.

## HISTORY
     
A rmdir command appeared in Version 1 AT&T UNIX.
