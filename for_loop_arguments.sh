#!/bin/bash
for ip_address in "$@"; do
 echo "Taking some action on IP address ${ip_address}"
 ping -c 1 ${ip_address}

done
#172.17.0.1 127.0.0.1 10.0.14.202 192.168.122.1
