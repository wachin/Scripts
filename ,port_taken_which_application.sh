#!/usr/bin/env bash

set -e

PORT="$1"

echo "Looking for application using port $PORT"

if command -v netstat &> /dev/null
then
    netstat -tulpn | grep ":$PORT"
    exit;
fi

if command -v ss &> /dev/null
then 
    ss -tulp | grep ":$PORT"
    
    exit;
fi
