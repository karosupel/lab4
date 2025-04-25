#!/bin/bash

if [ "$1" = "--date" ] || [ "$1" = "-d" ]
then
	echo "$(date)"
elif [ "$1" = "--logs" ] || [ "$1" = "-l" ] && [ "$2" = "" ]
then
	for ((i=1; i<=100; i++))
	do
		touch log$i.txt
	done
elif [ "$1" = "--logs" ] || [ "$1" = "-l" ] && [ "$2" -gt 0 ]
then
	for ((i=1; i<="$2"; i++))
        do
                touch log$i.txt
        done
elif [ "$1" = "--help" ] || [ "$1" = "-h" ]
then
	echo "Dostepne komedy to: "
	echo "--date (lub -d) - wyswietla dzisiejsza date"
	echo "--logs (lub -l) - tworzy sto plikow logX.txt"
	echo "--logs (lub -l x) X - tworzy X plikow logX.txt"
	echo "--help (lub -h) - wypisuje liste dostepnych komend"
else
	echo "Prosze podac odpowiednia flage"
fi
