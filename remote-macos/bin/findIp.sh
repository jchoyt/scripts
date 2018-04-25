#!/bin/bash

# Grabs the ip address from nslookup.
IPADDY=`nslookup -type=a myip.opendns.com resolver1.opendns.com | grep Address | cut -d ' ' -f 2 | tail -n 1`
echo $IPADDY
