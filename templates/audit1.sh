#!/bin/bash

k=$(sudo grep "^\s*kernel" /boot/grub/menu.lst | wc -l)
a=$(sudo grep "audit=1" /boot/grub/menu.lst | wc -l)

if [ "$k" == "$a" ]; then
	echo "0"
else
	echo "1"
fi
