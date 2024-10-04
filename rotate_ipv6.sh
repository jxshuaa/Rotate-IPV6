#!/bin/bash

INTERFACE="eth0"  # Your actual interface name
BASE_IP="CHANGEME"  # Base of your /96 block

# Define a list of specific addresses to rotate through
ADDRESSES=(
    "${BASE_IP}:0"
    "${BASE_IP}:1"
    "${BASE_IP}:2"
    "${BASE_IP}:3"
    "${BASE_IP}:4"
    "${BASE_IP}:5"
    "${BASE_IP}:6"
    "${BASE_IP}:7"
    "${BASE_IP}:8"
    "${BASE_IP}:9"
    "${BASE_IP}:a"
    "${BASE_IP}:b"
    "${BASE_IP}:c"
    "${BASE_IP}:d"
    "${BASE_IP}:e"
    "${BASE_IP}:f"
    "${BASE_IP}:0:a"  # Include the specific address you mentioned
)

# Pick a random address from the list
RANDOM_IP=${ADDRESSES[RANDOM % ${#ADDRESSES[@]}]}

# Assign the new IP address to the interface
ip -6 addr flush dev "$INTERFACE"  # Remove existing IPv6 addresses
ip -6 addr add "$RANDOM_IP/96" dev "$INTERFACE"  # Add the new address

echo "Changed IPv6 to $RANDOM_IP"
