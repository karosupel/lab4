#!/bin/bash

if [ "$1" = "--date" ]
then
	echo "$(date)"
elif [ "$1" = "--logs" ] && [ "$2" = "" ]
then
	for ((i=1; i<=5; i++))
	do
		touch log$i.txt
	done
elif [ "$1" = "--logs" ] && [ "$2" -gt 0 ]
then
	for ((i=1; i<="$2"; i++))
        do
                touch log$i.txt
        done
else
	echo "Prosze podac odpowiednia flage"
fi
