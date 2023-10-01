#!/bin/bash
docker-compose down
rm -Rf ./pgdata
rm -Rf ./jira
mkdir ./jira ./jira/shared
chown -R 2001:2001 ./jira

docker volume rm jira-datacenter-sandbox-environment_jira-node1-volume
docker volume rm jira-datacenter-sandbox-environment_jira-node2-volume
docker volume rm jira-datacenter-sandbox-environment_jira-node3-volume

docker volume rm jira-datacenter-sandbox-environment_nodered-volume

docker volume rm jira-datacenter-sandbox-environment_grafana1data-volume
docker volume rm jira-datacenter-sandbox-environment_grafana1conf-volume

docker volume rm jira-datacenter-sandbox-environment_prometheus1-volume
docker volume rm jira-datacenter-sandbox-environment_pgadmin1-volume
docker volume rm jira-datacenter-sandbox-environment_deepstackstorage
