#!/bin/bash
x=1
while [ $x -gt 0 ]
do
curl http://jira.internal/status  | grep "RUNNING"
x=$?
sleep 10
echo "Check..."
done

