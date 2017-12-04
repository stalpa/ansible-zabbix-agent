#!/bin/bash
modprobe -n -v $1 | awk '{print $1 $2}' | awk '$0=="install/bin/true"{print "0"} END { if ($0!="install/bin/true") print "1"}'
