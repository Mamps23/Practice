#!/bin/bash

#Print current date and time,username,working dir

#current_date=$(date +%Y-%m-%d)
#curent_time=$(date +%H:%M:%S)
Working_dir=$(pwd)

echo "Today's date":$(date)
echo "Working directory: $Working_dir"
echo " User is": $(whoami)
