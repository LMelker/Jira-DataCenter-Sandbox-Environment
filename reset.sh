#!/bin/bash
docker-compose down
rm -R -f ./pgdata
rm -R -f ./jira
mkdir ./jira
chown -R 2001:2001 ./jira

docker volume rm jira-datacenter-sandbox-environment_jira-node1-volume
docker volume rm jira-datacenter-sandbox-environment_jira-node2-volume
docker volume rm jira-datacenter-sandbox-environment_jira-node3-volume

