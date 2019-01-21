#!/bin/bash
# iptables configuration script

# Flush all current rules from iptables
sudo iptables -F

# Set default input, forward, and output policies
sudo iptables -P INPUT DROP
sudo iptables -P FORWARD DROP
sudo iptables -P OUTPUT ACCEPT

# Allow all traffic from MU IP space
sudo iptables -A INPUT -p tcp -s 128.206.0.0/16 -j ACCEPT
sudo iptables -A INPUT -p tcp -s 161.130.0.0/16 -j ACCEPT

# Set access for localhost
sudo iptables -A INPUT -i lo -j ACCEPT

# Accept packets belonging to established and related connections
sudo iptables -A INPUT -m state --state ESTABLISHED,RELATED -j ACCEPT

# Save settings
sudo /sbin/service iptables save

# List rules
sudo iptables -L -v