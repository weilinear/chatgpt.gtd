# chatgpt.gtd
Simple scripts to Get Things Done with chatgpt.

## gptcmd.sh
Call chatgpt to construct a linux command. Examples are

1. `$ ./gptcmd.sh "Remove all files that are at least 1 year old"`

   `find /path/to/files -type f -mtime +365 -delete`
2. `$ ./gptcmd.sh "Sync the clock"`

   `sudo ntpdate pool.ntp.org`