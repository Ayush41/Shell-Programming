#!/bin/bash

HOSTS = ( )
LOGFILE = "pingResult.log"

ping_host(){
	local host = $1
	local result= $(ping -c 1 $host)

	if[$? -eq 0]; then
		echo "$(date): $host is reachable" >> $LOGFILE
	else
		echo "$(date): $host is not reachable" >> $LOGFILE
	fi
}

touch $LOGFILE

#ping eaech host and loggin the results

for host in "${HOSTS[@]}"; do
	ping_host $host
done

echo "Ping monitoring completed. REsults are logged in $LOGFILE"

