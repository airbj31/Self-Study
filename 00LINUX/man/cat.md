# cat

## NAME

cat - concatenate files and print on the standard output

## SYNOPSIS

```
cat [OPTION] [FILE]...
```


## DESCRIPTION

Concatenate FILE(s), or standard input, to standard output.

 -A, --show-all
  + equivalent to -vET

 -b, --number-nonblank
  + number nonblank output lines

 -e     
  + equivalent to -vE

 -E, --show-ends
 + display $ at end of each line

 -n, --number
 + number all output lines

 -s, --squeeze-blank
 + never more than one single blank line

 -t     
 + equivalent to -vT

 -T, --show-tabs
 + display TAB characters as ^I

 -u     (ignored)

 -v, --show-nonprinting
 + use ^ and M- notation, except for LFD and TAB

 --help 
 + display this help and exit

 --version
 + output version information and exit

With no FILE, or when FILE is -, read standard input.

## EXAMPLES

 - Output f’s contents, then standard input, then g’s contents.
 
```
       cat f - g
```


 - Copy standard input to standard output.

```
       cat    
```


## AUTHOR

 Written by Torbjorn Granlund and Richard M. Stallman.

## REPORTING BUGS
       
 Report bugs to <bug-coreutils@gnu.org>.

## COPYRIGHT
       
Copyright © 2006 Free Software Foundation, Inc.
This  is  free software.  You may redistribute copies of it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.html).  There is NO  WARRANTY, to the extent permitted by law.

## SEE ALSO

The full documentation for cat is maintained as a Texinfo manual.  If the info and cat
programs are properly installed at your site, the command

```
info cat
```

should give you access to the complete manual.
