# !/bin/bash

VAR=`df | grep /media/jchoyt/backup`
if [ -n "$VAR" ]
then
	rsync --human-readable -av --exclude-from=/home/jchoyt/.rsync/exclude /home/jchoyt/ /media/jchoyt/backup/iris  > /home/jchoyt/rsync.log
	rsync --human-readable -av --exclude-from=/home/jchoyt/.rsync/exclude /media/jchoyt/3131-3364 /media/jchoyt/backup/sd_card >> /home/jchoyt/rsync.log
else
	echo "Main backup disk not connected"
fi
