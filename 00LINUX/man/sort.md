# sort

## NAME

        sort - sort lines of text files


## SYNOPSIS

```
        sort [OPTION]... [FILE]...
```

## DESCRIPTION

Write sorted concatenation of all FILE(s) to standard output.

Mandatory  arguments  to  long  options are mandatory for short options too.  Ordering
       
### options:

 -b, --ignore-leading-blanks  
        + ignore leading blanks

 -d, --dictionary-order  
        + consider only blanks and alphanumeric characters

 -f, --ignore-case  
        + fold lower case to upper case characters

 -g, --general-numeric-sort  
        + compare according to general numerical value

 -i, --ignore-nonprinting  
        + consider only printable characters

 -M, --month-sort  
        + compare (unknown) < `JAN' < ... < `DEC'

 -n, --numeric-sort  
        + compare according to string numerical value

 -r, --reverse  
        + reverse the result of comparisons

 ### Other options:

 -c, --check  
        + check whether input is sorted; do not sort

 -k, --key=POS1[,POS2]  
        + start a key at POS1, end it at POS2 (origin 1)

 -m, --merge  
        + merge already sorted files; do not sort

 -o, --output=FILE  
        + write result to FILE instead of standard output

 -s, --stable  
        + stabilize sort by disabling last-resort comparison

 -S, --buffer-size=SIZE  
        + use SIZE for main memory buffer

 -t, --field-separator=SEP  
        + use SEP instead of non-blank to blank transition

 -T, --temporary-directory=DIR  
        + use DIR for temporaries, not $TMPDIR or /tmp; multiple options specify multiple directories

 -u, --unique  
        + with  -c,  check  for  strict ordering; without -c, output only the first of an equal run

 -z, --zero-terminated  
        + end lines with 0 byte, not newline

 --help  
        + display this help and exit

 --version  
        + output version information and exit

POS is F[.C][OPTS], where F is the field number and C the character  position  in  the field.   OPTS  is  one  or  more single-letter ordering options, which override global ordering options for that key.  If no key is given, use the entire line as the key.

SIZE may be followed by the following multiplicative suffixes: % 1% of memory, b 1,  K 1024 (default), and so on for M, G, T, P, E, Z, Y.

With no FILE, or when FILE is -, read standard input.

**WARNING**  The  locale  specified  by the environment affects sort order.  Set LC_ALL=C to get the traditional sort order that uses native byte values.

## AUTHOR
Written by Mike Haertel and Paul Eggert.

## REPORTING BUGS

Report bugs to <bug-coreutils@gnu.org>.

## COPYRIGHT

Copyright (C) 2005 Free Software Foundation, Inc.
This is free software.  You may redistribute copies of it under the terms of  the  [GNU General  Public License](http://www.gnu.org/licenses/gpl.html).  There is NO WARRANTY, to the extent permitted by law.

## SEE ALSO

The full documentation for sort is maintained as a Texinfo manual.  If  the  info  and
sort programs are properly installed at your site, the command

```
info sort
```

should give you access to the complete manual.