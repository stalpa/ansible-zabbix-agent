#!/bin/bash
mount | awk '{print $3}' | egrep "^${1}$" | awk 'NR==1{print "0"} END { if (!NR) print "1"}'
