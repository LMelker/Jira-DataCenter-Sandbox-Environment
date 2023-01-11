#!/bin/bash
wait="180"
if [ -n  "$1" ]; then 
 wait="$1"
fi

while [ 1 ]
  do
    echo "Restart node1..."
    docker-compose restart jira-node1
    echo "Waiting: " $wait
    sleep $wait

    echo "Restart node2..."
    docker-compose restart jira-node2
    echo "Waiting: " $wait
    sleep $wait

    echo "Restart node3..."
    docker-compose restart jira-node3
    echo "Waiting: " $wait
    sleep $wait
done
