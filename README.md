# Server scripts
Sometimes you have repetitive commands, so why not to turn it into scripts? :)

## DirectAdmin update script (da-update.sh)
This script will update server using `apt update && apt upgrade`
Then goes to **/usr/local/directadmin/custombuild**
Gets updates for DirectAdmin, then let's you decide to update or not.

*Script is tested and working with Debian 8 and DirectAdmin version 1.53*

1. Download **da-update.sh** script.
2. Add user to sudo group.
*OPTIONAL:* for security reasons I `chmod 0710 da-update.sh` and `chown root:sudo da-update.sh`, this way I can root user can rwx, group can x and others can't do anything to it. Because you are in group sudo, you can execute it.
2. Add script to /etc/sudoers, so no password is requested from user trying to execute.
`username ALL = NOPASSWD: /path-to-script/update-server.sh`
3. Now you can execute script in terminal:
`sudo ./da-update.sh`