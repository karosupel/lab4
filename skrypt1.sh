#!/bin/bash

if [ "$1" = "--date" ]
then
	echo "$(date)"
elif [ "$1" = "--logs" ]
then
	#liczba=1
	for ((i=1; i<=100; i++))
	do
		touch log$i.txt
	done
else
	echo "Prosze podac odpowiednia flage"
fi
