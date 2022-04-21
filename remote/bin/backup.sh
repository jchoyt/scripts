#! /bin/bash
rsync -avz --exclude-from=/Users/jchoyt/exclude.txt --delete /Users/jchoyt /Volumes/backup/mm246729 > /Users/jchoyt/rsync.log
