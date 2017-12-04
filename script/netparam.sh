#!/bin/bash
sysctl $1 | awk '{print $3}' | awk '$0==0{print "0"} END {if ($0!="0") print "1"}'
