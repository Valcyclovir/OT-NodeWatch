#!/bin/bash

# This script includes multiple checks:
# 1. Checks that the "otnode" docker container is running.
# 2. Checks if the node has updated in the past 5 minutes


RUNNING=$(docker ps | grep otnode2 | wc -l)
echo $RUNNING

if [ $RUNNING -eq 0 ]; then
  /root/OT-Settings/data/send.sh "Node is NOT running!"
fi

UPDATED=$(docker logs --since 5m otnode2 | grep updated | wc -l)
echo $UPDATED

if [ $UPDATED -eq 1 ]; then
  /root/OT-Settings/data/send.sh "Node has updated to the newest version!"
fi