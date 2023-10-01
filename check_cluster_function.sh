#!/bin/bash
wait="270"
if [ -n  "$1" ]; then 
 wait="$1"
fi

echo "Waiting: " $wait
sleep $wait

while [ 1 ]
  do
    echo "Restart node1..."
    docker-compose stop jira-node1
    # docker container rm jira-datacenter-sandbox-environment_jira-node1_1
    # docker volume rm jira-datacenter-sandbox-environment_jira-node1-volume
    # docker-compose pull  jira-node1
    docker-compose up -d  jira-node1
    echo "Waiting: " $wait
    sleep $wait

    echo "Restart node2..."
    docker-compose stop jira-node2
    # docker container rm jira-datacenter-sandbox-environment_jira-node2_1
    # docker volume rm jira-datacenter-sandbox-environment_jira-node2-volume
    # docker-compose pull  jira-node2
    docker-compose up -d  jira-node2
    echo "Waiting: " $wait
    sleep $wait

    echo "Restart node3..."
    docker-compose stop jira-node3
    # docker container rm jira-datacenter-sandbox-environment_jira-node3_1
    # docker volume rm jira-datacenter-sandbox-environment_jira-node3-volume
    # docker-compose pull  jira-node3
    docker-compose up -d  jira-node3
    echo "Waiting: " $wait
    sleep $wait
done
