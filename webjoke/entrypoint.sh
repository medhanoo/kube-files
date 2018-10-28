#!/bin/bash

echo "stating joke daemon"
joke.sh &
echo "joke daemon started"
echo '==================================================================='
echo "App command"
echo '==================================================================='

if [ $# -eq 0 ]
then
	nginx -g 'daemon off;'
else
	nginx -g 'daemon off;' &
	$@
fi
