#!/bin/bash
grep "^${1}" /etc/ssh/sshd_config | awk 'NR==1{print "0"} END { if (!NR) print "1"}'
