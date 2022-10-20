#!/bin/bash
x=1
while [ $x -gt 0 ]
  do
    echo "Checking http://jira.internal/status ..."
    curl http://jira.internal/status 2>/dev/null | grep "$1"
    x=$?
    echo "Waiting for status:" $1
    sleep 10
done
echo "Got "$1"! So now we need to be ready for some action!"
