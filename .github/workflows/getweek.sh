#!/bin/bash

set -eu

# The first argument passed to the script is the start date
START_DATE="$1"

# Get the current date in the format YYYY-MM-DD
CURRENT_DATE=$(date +%Y-%m-%d)

# Calculate the difference in weeks
WEEKS_DIFF=$(( ($(date -d "$CURRENT_DATE" +%s) - $(date -d "$START_DATE" +%s)) / (60*60*24*7) ))

# Check if the difference in weeks is odd or even
if [ $((WEEKS_DIFF % 2)) -ne 0 ]; then
    exit 1
else
    exit 0
fi
