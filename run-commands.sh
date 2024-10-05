#!/bin/bash

# this script runs the commands and logs the stdout and stderr in the log.txt file

LOG_FILE="log.txt"
COMMAND=$1


cat << EOF >> $LOG_FILE
-----------------------------------
$(echo "Running Command: [$COMMAND]" | ts)
$($COMMAND 2>&1 | ts)
EOF