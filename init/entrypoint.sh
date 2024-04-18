#!/bin/sh
set -x 

for filename in access.log error.log fail2ban.log
do
    if [ ! -f /logs/$filename ]
    then
        touch /logs/$filename
    fi
done

chmod 777 -R /logs