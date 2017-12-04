#!/bin/bash
chkconfig | egrep "$1" | awk '{print $2 $3 $4 $5 $6 $7 $8}' | awk 'END { if ($0=="0:off1:off2:on3:on4:on5:on6:off") print "0"} { if ($0!="0:off1:off2:on3:on4:on5:on6:off" && (NR!=0))  print "1" }'
