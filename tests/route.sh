#!/bin/bash
route="/ /metrics /favicon.ico"

for r in ${route}
do  
    echo ""
    echo -e "\n - Route test: ${r}"
    curl -s localhost:9300${r}

    if [ ${?} -ne 0 ]; then
        echo "Something error."
        exit 1
    fi
done
