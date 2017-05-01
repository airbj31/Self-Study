# pwd

## NAME

pwd - print name of current/working directory

## SYNOPSIS

```
  pwd [OPTION]...
```

## DESCRIPTION
       
Print the full filename of the current working directory.

 -L, --logical
  + use PWD from environment, even if it contains symlinks

 -P, --physical
  + avoid all symlinks

 --help display this help and exit

 --version
 output version information and exit

NOTE: your shell may have its own version of pwd, which usually supersedes the version described here.  Please refer to your shell’s  documentation  for  details  about  the options it supports.

## Example

```
$ ln -s /bin ./adminbin
$ cd ./adminbin
$ pwd -L
$ pwd -P

```

## AUTHOR
       
Written by Jim Meyering.

## REPORTING BUGS

Report bugs to <bug-coreutils@gnu.org>.

## COPYRIGHT

Copyright © 2006 Free Software Foundation, Inc. This  is  free software.  You may redistribute copies of it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.html).  There is NO  WARRANTY,
       to the extent permitted by law.

## SEE ALSO

The full documentation for pwd is maintained as a Texinfo manual.  If the info and pwd programs are properly installed at your site, the command

```
  info pwd
```

should give you access to the complete manual.
