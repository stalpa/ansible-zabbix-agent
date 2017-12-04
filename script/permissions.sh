#!/bin/bash
#stat $1 | grep 'Access: (' | awk '$1=="Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)"{print "0"} END { if ($1!="Access: (0644/-rw-r--r--)  Uid: (    0/    root)   Gid: (    0/    root)") print "1"}'
ls -la $1 | awk '{print $1 $3 $4}' | awk '$0=="-rw-r--r--rootroot"{print "0"} END { if ($0!="-rw-r--r--rootroot") print "1"}'
