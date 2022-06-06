#!/bin/bash
route="/ /metrics /favicon.ico"

for r in ${route}
do  
    echo " - Route test: ${r}"
    curl -s localhost:9300${r}
    echo ""
done
