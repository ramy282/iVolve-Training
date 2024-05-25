#!/bin/bash 

#add your subnet 
subnet="192.168.30"

for i in {1..255}; do
    #when reach your subnet will print up and running	
    ip="$subnet.$i"
    if ping -c 1 -W 1 "$ip" &> /dev/null; then
        echo "Server $ip is up and running"
    else
    # otherwise will print unreachable
        echo "Server $ip is unreachable"
    fi
done

