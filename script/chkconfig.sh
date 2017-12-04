#!/bin/bash
#chkconfig | egrep "^${1}$" | awk '{print $2 $3 $4 $5 $6 $7 $8}' | awk 'END { if ($0=="0:off1:off2:off3:off4:off5:off6:off" || NR==0) print "0"} { if ($0!="0:off1:off2:off3:off4:off5:off6:off" && (NR!=0))  print "1" }'
chkconfig | egrep "$1" | awk '{print $2 $3 $4 $5 $6 $7 $8}' | awk 'END { if ($0=="0:off1:off2:off3:off4:off5:off6:off" || NR==0) print "0"} { if ($0!="0:off1:off2:off3:off4:off5:off6:off" && (NR!=0))  print "1" }'
