#!/bin/bash

# Check that OpenVPN is actually running.
running=$(ps -e | grep openvpn)
if [ $? -eq 1 ]; then
    # echo "No active VPN session found."
    exit 1
fi

# get process list, remove leading and trailing spaces, look for vpn, and cut out the pid
pid=$(ps -e | sed 's/^[ \t]*//;s/[ \t]*$//' | grep openvpn | cut -d" " -f 1)
kill $pid
