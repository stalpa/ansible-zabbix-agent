#!/bin/bash

if [ ! -f "$1" ];
then
	echo "1"
else
stat $1 | grep "Access: (" | awk '$0=="Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"{print "0"} END { if ($0!="Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)") print "1"}'
fi
