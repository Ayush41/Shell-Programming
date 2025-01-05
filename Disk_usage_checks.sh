#! /bin/bash

# Author: [Ayush Raj]

#!/bin/bash
# Check disk usage and alert if usage exceeds a threshold

THRESHOLD=80
USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ $USAGE -gt $THRESHOLD ]; then
    echo "Disk usage is above $THRESHOLD%. Current usage: $USAGE%"
else
    echo "Disk usage is below $THRESHOLD%. Current usage: $USAGE%"
fi

