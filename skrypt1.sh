#!/bin/bash

if [ "$1" = "--date" ]; then
	echo "$(date)"
else
	echo "Prosze podac odpowiednia flage"
fi
