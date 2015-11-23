#!/bin/bash
cat access_log | awk '{print $1}' |sort -u > ipstorage.txt
echo "[">loc.txt
while read p; do
 curl ipinfo.io/$p|grep "\"loc"| tr 'loc' 'new'|tr ':' 'google'| tr '"' ' '>>loc.txt
done <ipstorage.txt
echo "]">>loc.txt
