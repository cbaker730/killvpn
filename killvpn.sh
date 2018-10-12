#!/bin/bash

# Check that OpenVPN is actually running.
running=$(ps -e | grep openvpn)
if [ $? -eq 1 ]; then
    echo "No active VPN session found."
    exit 1
fi

pid=$(ps -e | grep openvpn | cut -d" " -f 1)
kill $pid
