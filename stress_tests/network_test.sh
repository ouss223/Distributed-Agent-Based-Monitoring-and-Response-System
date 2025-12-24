#!/bin/bash

# Network Stress Test Script

while true; do
    wget -q --timeout=30 -O /dev/null http://speedtest.tele2.net/10MB.zip 2>/dev/null
        
    echo " Download complete, repeating..."
    sleep 1
done
