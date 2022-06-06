#!/bin/bash
limit=${1}
shift 1

cnt=0
while [ ${cnt} -lt ${limit} ]
do
    sleep 5
    
    for i in ${@}
    do
        ./${i}

        if [ ! ${?} -eq 0 ]; then
            continue
        fi
    done

    if [ ${?} -eq 0 ]; then
        break
    fi

    cnt=$(( cnt + 1 ))
done
