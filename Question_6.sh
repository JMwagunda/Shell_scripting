#NAME: JUDD MARC ODOYO
#REG NO: SCT211-0744/2021

#!/bin/bash

# Specify the IP range to scan (modify as needed)
network="192.168.1"
start_range=0
end_range=10

# Loop through the IP range and ping each host
for ((i=start_range; i<=end_range; i++))
do
    ip="$network.$i"
    if ping -c 1 -W 1 "$ip" &> /dev/null; then
        echo "Host $ip is up"
    else
        echo "Host $ip is down"
    fi
done
ip addr