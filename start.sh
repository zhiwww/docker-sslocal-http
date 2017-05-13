#!/bin/bash

polipo proxyAddress=0.0.0.0 proxyPort=$PROXY_PORT socksParentProxy=127.0.0.1:7980 socksProxyType=socks5 logFile=/svc/polipo.log logLevel=4 daemonise=true
sleep 1
cat /svc/polipo.log
/usr/local/bin/sslocal -b 0.0.0.0 -l 7980 $@
