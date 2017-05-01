# rm

## NAME

rm - remove files or directories

## SYNOPSIS

rm [OPTION]... FILE...

## DESCRIPTION

This manual page documents the GNU version of rm.  rm removes each specified file.  By default, it does not remove directories.

If  a file is unwritable, the standard input is a tty, and the -f or --force option is not given, rm prompts the user for whether to remove the file.  If the response is not affirmative, the file is skipped.

## OPTIONS

Remove (unlink) the FILE(s).

 -f, --force
  + ignore nonexistent files, never prompt

 -i, --interactive
  + prompt before any removal

 --no-preserve-root 
  + do not treat ‘/’ specially (the default)

 --preserve-root  
  + fail to operate recursively on ‘/’

 -r, -R, --recursive
  + remove directories and their contents recursively

 -v, --verbose  
  + explain what is being done

 --help  
  + display this help and exit

 --version
  + output version information and exit

By default, rm does not remove directories.  Use the --recursive (-r or -R) option to remove each listed directory, too, along with all of its contents.

To remove a file whose name starts with a ‘-’, for example ‘-foo’, use one of these commands:

```
 $ rm -- -foo
 $ rm ./-foo
```

 Note that if you use rm to remove a file, it is usually possible to recover the contents of that file.  If you want more assurance that the contents are truly unrecoverable, consider using shred.

## AUTHOR

Written by Paul Rubin, David MacKenzie, Richard Stallman, and Jim Meyering.

## REPORTING BUGS
       Report bugs to <bug-coreutils@gnu.org>.

## COPYRIGHT

Copyright © 2006 Free Software Foundation, Inc.
This  is  free  software.   You  may redistribute copies of it under the terms of the [GNU General Public License](http://www.gnu.org/licenses/gpl.html).  
There is NO WARRANTY, to the extent permitted by law.

## SEE ALSO
       
 chattr(1), shred(1)

 The full documentation for rm is maintained as a Texinfo manual.  If the info and rm programs are properly installed at your site, the command
