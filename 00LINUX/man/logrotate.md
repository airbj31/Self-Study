# logrotate

## NAME

logrotate - rotates, compreses, and mails system logs

## SYNOPSIS

```       
logrotate [-dv] [-f|--force] [-s|--state file] config_file+
```

## DESCRIPTION
       
 logrotate  is  designed to ease administration of systems that generate large numbers of log files.  It allows automatic rotation, compresion, removal, and mailing of log files.  Each log file may be handled daily, weekly, monthly, or when it grows too large.

Normally, logrotate is run as a daily cron job.	It will not  modify  a log  multiple  times  in	 one  day unles the criterium for that log is based on the log’s size and logrotate is being run multiple times  each day, or unles the -f or --force option is used.

 Any number of config files may be given on the command line. Later config files may override the options given in earlier files, so the order in  which  the logrotate config files are listed in is important.  Normally, a single config file which includes any other config files which are  needed  should  be used.  See below for more information on how to use the include directive to accomplish this.  If a directory is	 given on  the	command line, every file in that directory is used as a config file.

If no command line arguments are given, logrotate  will	print  version and  copyright  information,  along with a short usage summary. If any errors occur while rotating logs, logrotate  will  exit	with  non-zero status.


## OPTIONS

 --?, --help
  + -Prints help mesage.


 -v, --verbose
  + Turn on verbose mode.


 -d, --debug
  + Turns  on	 debug mode and implies -v.  In debug mode, no changes will be made to the logs or to the logrotate state file.


 -f, --force
  + Tells logrotate to force the rotation, even if it doesn’t think this is necesary. Sometimes this is useful after adding new entries to logrotate, or if old log files have been  removed  by hand, as the new files will be created, and logging will continue correctly.

 -m, --mail <command>
  + Tells logrotate which command to use when mailing logs. This  command  should accept two arguments: 1) the subject of the mesage, and 2) the recipient. The command must then read a mesage on standard input and mail it to the recipient. The default mail command is /bin/mail -s.

 -s, --state <statefile>
  + Tells logrotate to use an alternate state file. This is useful if logrotate is being run as a different user for various sets of log files.  The default state file is /var/lib/logrotate.status.

 --usage
  + Prints a short usage mesage.


## CONFIGURATION FILE

  logrotate reads everything about the log files it should be handling from the series of configuration files specified on the	command	 line. Each configuration file can set global options (local definitions override global ones, and later  definitions	 override  earlier  ones)  and specify	logfiles  to  rotate.  A  simple configuration file looks like this:


***sample logrotate configuration file***
       
```
	compres

       /var/log/mesages {
	   rotate 5
	   weekly
	   postrotate
	       /sbin/killall -HUP syslogd
	   endscript
       }

       "/var/log/httpd/acces.log" /var/log/httpd/error.log {
	   rotate 5
	   mail www@my.org
	   size 100k
	   sharedscripts
	   postrotate
	       /sbin/killall -HUP httpd
	   endscript
       }

       /var/log/news/* {
	   monthly
	   rotate 2
	   olddir /var/log/news/old
	   misingok
	   postrotate
	       kill -HUP ‘cat /var/run/inn.pid‘
	   endscript
	   nocompres
       }
```

The first few lines set global options; in the example, logs are compresed after they are rotated. Note that comments may appear anywhere in the config file as long as the first non-whitespace character on the line is a #.

The next section of the config files defined how to handle the log file '/var/log/mesages'. The log will go through five weekly rotations before being removed. After the log file has been rotated (but before the old version of the log has been compresed), the command `/sbin/killall -HUP syslogd` will be executed.

The next section defines the parameters for both `/var/log/httpd/acces.log` and `/var/log/httpd/error.log`. They are rotated whenever it grows over 100k in size, and the old logs files are mailed (uncompresed) to www@my.org after going through 5 rotations, rather then being removed. The sharedscripts means that the postrotate script will only be run once, not once for each log which is rotated. Note that the double quotes around the first filename at the beginning of this section allows logrotate to rotate logs with spaces in the
name. Normal shell quoting rules apply, with ’, ", and s characters supported.

The last section defines the parameters for all of the files in /var/log/news. Each file is rotated on a monthly basis. This is con- sidered a single rotation directive and if errors occur for more then one file, the log files are not compresed.

Please use wildcards with caution. If you specify *, logrotate will rotate all files, including previously rotated ones. A way around this is to use the olddir directive or a more exact wildcard (such as *.log).

Here is more information on the directives which may be included in  a
logrotate configuration file:


 **compress**
 + Old  versions  of log files are compresed with gzip by default.
 See also nocompres.


 **comprescmd**
 + Specifies which command to  use  to  compres  log  files. The default is gzip. See also compres.


 **uncomprescmd**
 + Specifies which command to use to uncompres log files. The default is gunzip.


 **compresext**
 + Specifies which extension to use on compresed logfiles, if compresion is enabled.  The default follows that of the configured compresion command.


 **compresoptions**
 + Command line options may be pased to the compresion  program, if  one is in use.  The default, for gzip, is "-9" (maximum compresion).


 **copy**   
 + Make a copy of the log file, but don’t change  the  original  at all. This option can be used, for instance, to make a snapshot of the current log file, or when some other utility needs to truncate or pare the file. When this option is used, the create   option will have no effect, as the old log file stays in place.

 **copytruncate**
 + Truncate the original log file in place after creating a copy, instead of moving the old log file and optionally creating a new one, It can be used when some program can not be told to close its logfile and thus might continue writing (appending) to the previous log file forever. Note that there is a very small time slice between copying the file and truncating it, so some logging data might be lost. When this option is used, the create option will have no effect, as the old log file stays in place.


 **create mode owner group**  
 + Immediately after rotation (before the postrotate script is run)the log file is created (with the same name as the log file justrotated).  modespecifies  themode for the log file in octal(the same as chmod(2)), owner specifies the user name  who  willown  thelog  file,  and group specifies the group the log filewill belong to. Any of the log file attributes may  be  omitted,in  which case  those  attributes for the new file will use thesame values as the original log file for the omitted attributes.This option can be disabled using the nocreate option.


 **daily**
 + Log files are rotated every day.


 **dateext**
 + Archive  old versions of log files adding a daily extension like YYYYMMDD instead of simply adding a number.


 **delaycompres**
 + Postpone compresion of the previous log file to the next  rotation  cycle.  This has only effect when used in combination with
 compres.  It can be used when some program can not be told to close  its logfile and thus might continue writing to the previ-
 ous log file for some time.


 **extension ext**
 + Log files with ext extension can keep it after the rotation.  If compresion  is  used,  the compresion extension (normally .gz)
 appears  after  ext.  For  example  you  have  a logfile named mylog.foo  and  want  to rotate it to *mylog.1.foo.gz* instead of *mylog.foo.1.gz*.


 ifempty
 Rotate  the  log file  even  if it  is empty, overiding  the
 notifempty option (ifempty is the default).


 include file_or_directory
 Reads the file given as an argument as if it was included inline
 where the include directive appears. If a  directory  is given,
 most of the files in that directory are read in alphabetic order
 before procesing of the including  file  continues.  The  only
 files  which  are  ignored are files which are not regular files
 (such as directories and named pipes) and files whose names  end
 with  one  of the taboo extensions, as specified by the tabooext
 directive.  The include directive may not appear inside of a log
 file definition.


 mail addres
 When a log is rotated out-of-existence, it is mailed to addres.
 If no mail should be generated by a particular log,  the nomail
 directive may be used.


 mailfirst
 When using the mail command, mail the just-rotated file, instead
 of the about-to-expire file.


 maillast
 When using the mail  command,  mail  the about-to-expire  file,
 instead of the just-rotated file (this is the default).


 maxage count
 Remove  rotated  logs  older  than <count> days. The age is only
 checked if the logfile is to be rotated. The files are mailed to
 the configured addres if maillast and mail are configured.


 minsize size
 Log files are rotated when they grow bigger then size bytes, but
 not before the  additionally  specified  time  interval  (daily,
 weekly, monthly, or yearly).  The related size option is similar
 except that it is mutually  exclusive  with  the time  interval
 options, and  it  causes log files to be rotated without regard
 for the last rotation time.  When minsize is used, both the size
 and timestamp of a log file are considered.


 misingok
 If  the log file is mising, go on to the next one without isu-
 ing an error mesage. See also nomisingok.


 monthly
 Log files are rotated the first time logrotate is run in a month
 (this is normally on the first day of the month).


 nocompres
 Old versions of log files are not compresed with gzip. See also
 compres.


 nocopy Do not copy the original log file and leave it in place.  (this
 overrides the copy option).


 nocopytruncate
 Do  not truncate the original log file in place after creating a
 copy (this overrides the copytruncate option).


 **nocreate**
 + New log  files  are  not created  (this overrides  the create
 option).


 **nodelaycompres**
 + Do not postpone compresion of the previous log file to the next
 rotation cycle (this overrides the delaycompres option).


 **nodateext**
 + Do not archive  old versions of log files  with  date  extension
 (this overrides the dateext option).


 **nomail**   
 + Don’t mail old log files to any addres.


 **nomisingok**  
 + If  a  log  file does  not  exist,  isue an error. This is the  default.

 **noolddir**
 + Logs are rotated in the same directory the log normally  resides in (this overrides the olddir option).

 **nosharedscripts**
 + Run prerotate and postrotate scripts for every log file which is rotated (this is the default, and  overrides  the  sharedscripts option). The  absolute  path to the log file is pased as first argument to the script. If the  scripts  exit  with  error,  the remaining actions will not be executed for the affected log only.

 **notifempty**
 + Do not rotate the log if it is empty (this overrides the ifempty option).

 **olddir directory**
 + Logs are moved into directory for rotation. The directory must be on the same physical device as the log file being rotated, and  is  asumed to be relative to the directory holding the log file unles an absolute path name is specified. When this option is  used all old versions of the log end up in directory.  This option may be overriden by the noolddir option.


 **postrotate/endscript**
 + The lines between postrotate and endscript (both of  which  must appear  on  lines  by  themselves)  are executed (using /bin/sh) after the log file is rotated. These directives may only appear inside a log file definition. Normally, the absolute path to the log file is pased as first argument to the script.  If  sharedscripts  is specified, whole pattern is pased to the script See prerotate as well.


 **prerotate/endscript**
 + The lines between prerotate and endscript (both  of  which  must appear on lines by themselves) are executed (using /bin/sh) before the log file is rotated and only if the log will actually be  rotated.  These directives may only appear inside a log file definition. Normally, the absolute path to the log file is pased as first argument to the script.  If  sharedscripts is specified, whole pattern is pased  to  the  script. See also postrotate.


 **firstaction/endscript
 + The  lines between firstaction and endscript (both of which must appear on lines by themselves) are executed (using /bin/sh) once before  all  log files  that  match  the wildcarded pattern are rotated, before prerotate script is run and only if at least one log  will actually be rotated.  These directives may only appear inside a log file definition. Whole pattern  is  pased  to  the script  as  first  argument.  If the script exits with error, no further procesing is done. See also lastaction.


 **lastaction/endscript**
 + The lines between lastaction and endscript (both of  which  must appear on lines by themselves) are executed (using /bin/sh) once after all log  files  that  match  the  wildcarded  pattern  are rotated, after postrotate script is run and only if at least one log is rotated. These directives may only appear inside a  log file  definition. Whole pattern is pased to the script as first argument. If the script exits with error, just an error  mesage is shown (as this is the last action). See also firstaction.


 **rotate** <count>
  + Log files are rotated <count> times before being removed or mailed to the addres specified in a mail directive. If count is 0, old versions are removed rather then rotated.


 **size size** 
  + Log files are rotated only if they grow bigger then size bytes. If size is  followed  by	M,  the	 size  if  asumed  to	be  in megabytes. If the k is used, the size is in kilobytes. So size 100, size 100k, and size 100M are all valid.


 **sharedscripts**
  + Normally, prescript and postscript scripts are run for each  log which is rotated and the absolute path to the log file is pased as first argument to the script. That means a single script  may be  run multiple times for log file entries which match multiple files (such as the /var/log/news/* example). If sharedscripts is specified, the  scripts	are  only run once, no matter how many logs match the wildcarded pattern, and whole pattern  is	pased to  them. However,  if none of the logs in the pattern require rotating, the scripts will not be run at all. This option	overrides the nosharedscripts option and implies create option.


 **start** <count>
	     
 This is the number to use as the base for rotation. For example, if you specify 0, the logs will be created with a .0 extension. as they are rotated from the original log files. If you specify 9, log files will be created with a  .9,	skipping  0-8.	 Files will  still  be  rotated	the number of times specified with the count directive.


 **tabooext [+] list**
  + The current taboo extension list is  changed  (see  the  include directive for information on the taboo extensions). If a + precedes the list of extensions, the current taboo  extension  list is  augmented,  otherwise	 it is replaced. At startup, the taboo extension list contains .rpmorig, .rpmsave, ,v,  .swp,  .rpmnew, and ~.


 **weekly** 
  + Log filee are rotated if the current weekday is les then the weekday of the last rotation or if more then a week  has	pased since  the  last rotation. This is normally the same as rotating logs on the first day of the week, but it works better if logrotate is not run every night.


 **yearly** 
  + Log files are rotated if the current year is not the same as the last rotation.


## FILES

```
/var/lib/logrotate.status  ## Default state file.
/etc/logrotate.conf	   ## Configuration options.
```

## SEE ALSO
       
gzip(1)

<http://fedorahosted.org/logrotate/>

## AUTHORS
       
Erik Troan, Preston Brown, Jan Kaluza

<logrotate-owner@fedoraproject.org>

