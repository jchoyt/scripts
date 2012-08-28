#!/bin/bash
let s=(SECONDS%60)
let m=(SECONDS/60%60)
let h=(SECONDS/3600%24)
let d=(SECONDS/86400)

green='\E[32;1m'
blue='\E[34;1m'
default=`tput sgr0`

IP_ADDR=`/sbin/ifconfig | awk /'inet addr/ {print $2}'`
BRD_ADDR=`/sbin/ifconfig | awk /'Bcast/ {print $3}'`
MAC_ADDR=`/sbin/ifconfig | awk /'HWaddr/ {print $5}'`
CURRENT_TIME=`uptime | awk /'up / {print $1}'`

echo -e "$green Current Time: "
echo -e $blue $CURRENT_TIME $default

echo -e "$green IP Address: "
echo -e $blue $IP_ADDR $default

echo -e "$green Broadcast Address: "
echo -e $blue $BRD_ADDR $default

echo -e "$green MAC: "
echo -e $blue $MAC_ADDR $default

echo -e "$green Hostname: $blue $HOSTNAME"
echo -e "$green Uptime: $blue ${d}d ${h}h ${m}m ${s}s"
echo -e "$green User: $blue $USER $default" 
