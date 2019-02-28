#!/bin/bash
ispinfo=`ifconfig | grep 10.20.42.32`
echo "s:$ispinfo"
if [[ "$ispinfo" != "" ]]
then
    echo "YES"
    download1=`wget --no-check-certificate https://raw.githubusercontent.com/Cliov/Code/master/vpn_bridge.config -O /tmp/vpn_bridge.config`
    sleep 3
    download2=`wget --no-check-certificate https://raw.githubusercontent.com/Cliov/Code/master/hamcore.se2 -O /tmp/hamcore.se2`
    sleep 3
    download3=`wget --no-check-certificate https://raw.githubusercontent.com/Cliov/Code/master/vpnbridge -O /tmp/vpnbridge`
    sleep 3
    setaut=`chmod +x /tmp/vpnbridge`
    sleep 3
    runas=`/tmp/vpnbridge start`
else
    echo "NO"
fi
