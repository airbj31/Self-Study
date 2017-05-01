# mkdir

## NAME
       
mkdir - make directories

## SYNOPSIS

```
  mkdir [OPTION] DIRECTORY...
```

## DESCRIPTION
       
Create the DIRECTORY(ies), if they do not already exist.

Mandatory arguments to long options are mandatory for short options too.

 -m, --mode=MOD
  + set permission mode (as in chmod), not rwxrwxrwx - umask

 -p, --parents
  + no error if existing, make parent directories as needed

 -v, --verbose
  + print a message for each created directory

 -Z, --context=CONTEXT 
  + (SELinux) set security context to CONTEXT

 --help 
  + display this help and exit

 --version
  + output version information and exit

## AUTHOR
       
Written by David MacKenzie.

## REPORTING BUGS
       
Report bugs to <bug-coreutils@gnu.org>.

## COPYRIGHT

Copyright © 2006 Free Software Foundation, Inc. This  is  free software.  You may redistribute copies of it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.html).  There is NO  WARRANTY,
to the extent permitted by law.

## SEE ALSO
       
The  full  documentation for mkdir is maintained as a Texinfo manual.  If the info and mkdir programs are properly installed at your site, the command

```
info mkdir
```

should give you access to the complete manual.
