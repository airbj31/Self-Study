# Systen Log

## brief introduction

## Useful commands to manage system logs

 - syslogd	: 
 - logrotate	:
 - logwatch	:

## [syslogd](./man/syslogd.man)

 All the records after system booting are stored in the log file in the directory of '/var/log' by **syslogd daemon** and **klogd**.

 the daemon is included in the sysklogd package, which is installed with Linux installation.

  + provides two system utilities which provide support for system logging and kernel message trapping.  Support of both internet and unix domain  sockets  enables this utility package to support both local and remote logging.

### Syslog message components




#### Facility

| code | Facility      | description                             |
|------|---------------|-----------------------------------------|
| 4    | auth          | security/authorization message          |
| 10   | authpriv      | ecurity/authorization message           |
| 15   | cron          | schduling daemon                        |
| 3    | daemon        | system daemons                          |
| 0    | kern          | kernal messages                         |
| 2    | mail          | mail system                             |
| 7    | news          | netwrok news subsystem                  |
| 8    | uucp          | uucp subsystem                          |
| 16-23| local0-local7 | local use 0 to 7                        |
| 1    | users         | user-level message                      |
| 5    | syslog        | messages generated internally by syslog |
| 6    | lpr           | line printer subsystem                  |  
| 9    |               | clock daemon                            |
| 11   | ftp           | ftp daemon                              |
| 12   | -             | NTP subsystem                           |
| 13   | -             | log audit                               |

### Severity

the Severity is defined in [RFC 5424](https://tools.ietf.org/html/rfc5424)

| value | severity  | keyword | Deprecated keywords | Description                                       |
|-------|-----------|---------|---------------------|---------------------------------------------------|
| 0     | Emergency |         |                     |  System is unusable \n A panic condition          | 
| 1     | Alert     |         |                     |  Action must be taken immediatel                  |
| 2     | Critical  | crit    |                     |  Critical conditions, such as hard device errors. |
| 3     | Error     | err     | error               |  Error condiions.                                 |
| 4     | Warning   | warning | warn                |  Warning condition
| 5     | Notice    | notice  |                     |  normal but significant condition. /n conditions that are not error condition but that may require special handlng |
| 6     | Information |         |                     | Informational message |
| 7     | Debug     | debug   |                     | Debug-level messages. Messages that contain information normally of use only when debugging a program.

### How to configure syslog daemon.

**/etc/syslog.conf** file is the main configuration file for syslogd daemon. 

**Rules about configuring syslogd daemon**

 - Lines starting with a hash mark ("#") is a comment line so ignored.
 - blank line is also ignored.
 - Evey line is consists of **selector field** and **action filed**.

    + **selector field**   which information would be stored ?.

    + **action field**     where is the file the information stored.

  facility and message priority is setted in the selector field.

**example : etc/syslog.conf**

```
# Log all kernel messages to the colsole.
# logging much else clutters up the screen.

kern.*	/dev/console

# log anything (Except mail) of level info or higher. please see the 'Facility'
# Don't log private authentication messages.

*.info;mail.none;news.none;authpriv.none;cron.none	/var/log/message

# The authprive file has restricted access
authpriv.*						/var/log/secure

# log all the mail messages in one place

mail.*							/var/log/maillog

# log cron stuff

cron.*							/var/log/cron

# save news errors of level crit and higher in a special file.
uucp,news.crit						/var/log/spooler

# save boot messages also to boot.log

local7.*						/var/log/boot.log0

```

## logrotate
