#!/bin/bash
# A script that runs the commands necessary to finish Module 2

echo 'COMMAND: hostname -f'
hostname -f
echo ''

echo 'COMMAND: df'
df
echo ''

echo 'COMMAND: date'
date
echo ''

echo 'COMMAND: uname -r'
uname -r
echo ''

echo 'COMMAND: ss -atpu'
ss -atpu
echo ''

echo 'COMMAND: sudo cat /etc/crontab | grep update'
sudo cat /etc/crontab | grep update
echo ''

echo 'COMMAND: sudo iptables -L -v'
sudo iptables -L -v
echo ''
