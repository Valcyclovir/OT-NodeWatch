#!/bin/bash

# This script checks that the "otnode" docker container is running.
#

BIDS=$(
)
echo $BIDS

if [ $BIDS -eq 0 ]; then
  /root/OT-NodeWatch/data/send.sh "Node is NOT running!"
fi
