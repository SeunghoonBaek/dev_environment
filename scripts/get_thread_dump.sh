#!/bin/bash

if [ $# -eq 0 ]
then
	echo "Please enter PID."
	exit 0
fi


date=`date +%y%m%d_%H%M`
PID=$1
jstack -l ${PID} > ./${PID}-${date}.tdump
