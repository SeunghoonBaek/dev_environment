#!/bin/bash

PROGRAM_NAME=working

if [ $# -eq 0 ]
then
    echo "---------------------------------------------"
    echo "Please see below message and retry again."
    echo "You should enter an arguments."
    echo "---------------------------------------------"
    echo "ex) ./run_dummy_worker.sh 10 -> run 10 dummy worker"
    echo "ex) ./run_dummy_worker.sh clear -> kill all dummy worker"
    exit 0
fi

argument=$1

if [ ${argument} == "clear" ]
then
    killall ${PROGRAM_NAME}
    exit 0
fi

dummy_count=${argument}
echo "dummy count : ${dummy_count}"

for ((i=0;i<${dummy_count};i++)); do
    ./${PROGRAM_NAME} &
done
