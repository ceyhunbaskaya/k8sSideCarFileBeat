#!/bin/bash
valid=true
count=1
while [ $valid ]
do
	echo $count
	echo "$(date +%F'  ||  '%R:%S'  ||--') current count value:$count" >> $(hostname).log
	if [ $count -eq 5000 ];
		then
			break
	fi
	sleep 5
	((count++))
done
