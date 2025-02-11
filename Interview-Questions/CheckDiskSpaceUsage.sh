#!/bin/bash

disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# comparing the disk usage and print a warning if it exceeds 80%

if [$disk_usage -gt 80]; then
	echo "Warning: Disk usage is above 80%. Current usage is $disk_usage%."
else
	echo "Disk usage is normal. Current usage is $disk_usage%."
fi

