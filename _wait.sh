#!/bin/bash
x=1
while [ $x -gt 0 ]
do
curl http://localhost/status 2>/dev/null | grep "$1"
x=$?
sleep 10
echo "Check..."
done

