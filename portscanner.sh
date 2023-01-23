#! /bin/bash

# This script is designed to find hosts with a specific port open.

echo "Enter the starting IP address: "
read FirstIP

echo "Enter the last octet of the last IP address: "
read LastOctetIP

echo "Enter the port number you want to scan for: "
read port

nmap -sT $FirstIP-$LastOctetIP -p $port >/dev/null -oG Portscan

cat Portscan | grep open > Portscan2
cat Portscan2