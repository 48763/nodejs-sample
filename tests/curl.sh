#!/bin/bash

curl localhost:9300/metrics > /dev/null 2>&1
if [ ! ${?} -eq 0 ]; then
    echo "Something error."
    exit 1;
fi
