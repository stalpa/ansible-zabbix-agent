#!/bin/bash

pamd=$(cat /etc/pam.d/password-auth  /etc/pam.d/system-auth |  egrep pam_pwquality.so | egrep -o '^password|requisite|pam_pwquality.so|try_first_pass|retry=3' | wc -l)
sec=$(egrep -o '^minlen=14$|^dcredit=-1$|^ucredit=-1$|^ocredit=-1$|^lcredit=-1$' /etc/security/pwquality.conf | wc -l)
a="10"
b="5"

if [[ "$pamd" -eq "$a" && "$sec" -eq "$b" ]]; then
	echo "0"
else
	echo "1"
fi
