#! /bin/bash -e

START_DATE="$1"
CURRENT_DATE=$(date +%Y-%m-%d)
WEEKS_DIFF=$(( ($(date -j -f "%Y-%m-%d" $CURRENT_DATE +%s) - $(date -j -f "%Y-%m-%d" $START_DATE +%s)) / (60*60*24*7) ))

if [ $((WEEKS_DIFF % 2)) -ne 0 ]; then
    exit 1;
else
    exit 0;
fi
