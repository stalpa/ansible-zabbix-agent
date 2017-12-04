#!/bin/bash

crondeny="/etc/cron.deny"
atdeny="/etc/at.deny"
cronallow="/etc/cron.allow"
atallow="/etc/at.allow"


if [[ -f "$crondeny" && "$atdeny" ]] && [[ ! -f "$cronallow" && "$atallow" ]];
then
	echo "1"
else
	echo "0"
fi

stat "$cronallow" && "atallow" | grep "Access: (" | awk '$0=="Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)"{print "0"} END { if ($0!="Access: (0600/-rw-------)  Uid: (    0/    root)   Gid: (    0/    root)") print "1"}' 
