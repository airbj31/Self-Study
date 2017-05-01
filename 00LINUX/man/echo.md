# echo

## NAME

echo - display a line of text

## SYNOPSIS

echo [OPTION]... [STRING]...

## DESCRIPTION

Echo the STRING(s) to standard output.

 -n     
  + do not output the trailing newline

 -e     
  + enable interpretation of backslash escapes

 -E     
  + disable interpretation of backslash escapes (default)

 --help  
  + display this help and exit
       
 --version
  + output version information and exit

If -e is in effect, the following sequences are recognized:

       \0NNN  the character whose ASCII code is NNN (octal)

       \\     backslash

       \a     alert (BEL)

       \b     backspace

       \c     suppress trailing newline

       \f     form feed

       \n     new line

       \r     carriage return

       \t     horizontal tab

       \v     vertical tab

NOTE:  your  shell may have its own version of echo, which usually supersedes the version described here.  Please refer to your shell’s documentation for details about the options it supports.

## AUTHOR

Written by FIXME unknown.

## REPORTING BUGS

Report bugs to <bug-coreutils@gnu.org>.

## COPYRIGHT

Copyright © 2006 Free Software Foundation, Inc.
This is free software.  You may redistribute copies of it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.html).  There  is  NO  WARRANTY,  to  the extent permitted by law.

## SEE ALSO

The full documentation for echo is maintained as a Texinfo manual.  If the info and echo programs are properly installed at your site, the command

```
              info echo
```
      
should give you access to the complete manual.
