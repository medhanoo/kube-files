#!/bin/bash

echo "stating joke daemon"
joke.sh &
echo "joke daemon started"
echo '==================================================================='
echo "App command"
echo '==================================================================='
echo $@
exec $@
