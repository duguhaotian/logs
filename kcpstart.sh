#!/bin/bash
cd /root/kcptun/
./server_linux_amd64 -c /root/logs/kcptun.json 2>&1 &
echo "Kcptun started."
