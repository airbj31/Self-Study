# Systen Log

## brief introduction

All the records after system booting are stored in the log file in the directory of '/var/log' by **syslogd daemon** and **klogd**.


 - [syslogd](./man/syslogd.md)

  + provides two system utilities which provide support for system logging and kernel message trapping.  Support of both internet and unix domain  sockets  enables this utility package to support both local and remote logging.

  syslog.conf file is consists of **selector field** and **action filed**.
 
  **selector field**   which information would be stored ?.
  **action field**     where is the file the information stored.

  facility and message priority is setted in the selector field.

### Facility

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
| 14   | -             | log alert                               |

### [Severity](https://tools.ietf.org/html/rfc5424)

| value | severity  | keyworld | Deprecated keywords | Description |
|------------------------------------------------------------------|
| 0     | Emergency |          |                     |             |







## logfile management

