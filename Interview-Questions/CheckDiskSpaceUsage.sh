#!/bin/bash

disk_usage=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

# comparing the disk usage and print a warning if it exceeds 80%

