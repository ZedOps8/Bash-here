#!/bin/bash

# Network Connectivity Checker

echo "Enter the server to ping for connectivity check:"
read server

if ping -c 3 "$server" &> /dev/null; then
    echo "Network connectivity to $server is OK."
else
    echo "Network connectivity to $server is down."
fi
