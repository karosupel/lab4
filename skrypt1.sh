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
elif [ "$1" = "--help" ]
then
	echo "Dostepne komedy to: "
	echo "--date - wyswietla dzisiejsza date"
	echo "--logs - tworzy sto plikow logX.txt"
	echo "--logs X - tworzy X plikow logX.txt"
else
	echo "Prosze podac odpowiednia flage"
fi
