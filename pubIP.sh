#!/bin/bash

ip=$(curl -s icanhazip.com)

echo "$ip"

existing=$(cat ip.txt)

echo "$existing"

if [ $ip != $existing ]
then
	echo The new IP address is "$ip" | mail -s "MajorHome IP address changed" marcus@majorshouse.com
	echo "$ip" > ip.txt
fi
