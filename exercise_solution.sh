#!/usr/bin/env bash
 
if [[ $# -lt 2 ]]; then
    echo "Error: missing arguments. Usage: $0 <name> <domain>" >&2
    exit 1
fi
 
NAME="$1"
DOMAIN="$2"
CSV_FILE="results.csv"
DATETIME=$(date "+%Y-%m-%d %H:%M:%S")
 
if ping -c 1 -W 2 "$DOMAIN" &>/dev/null; then
    RESULT="success"
else
    RESULT="failure"
fi
 
echo "Ping $RESULT for $DOMAIN"
 
echo "$NAME,$DOMAIN,$RESULT,$DATETIME" >> "$CSV_FILE"

sleep 1000