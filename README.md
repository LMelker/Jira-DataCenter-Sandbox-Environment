# Jira-DataCenter-Sandbox-Environment
Play with Jira in a Dataceter setup

## Pre-conf
### Setup the hosts file
You need to add this hosts in your "hosts"-file:
On Linux OS:
```bash
$ sudoedit /etc/hosts
```

```bash
# Docker Jira DataCenter Sandbox
# for Atlassian
127.0.11.1  nodered.internal
127.0.12.1  jupyter.internal
127.0.13.1  grafana.internal
127.0.14.1  prometheus.internal
127.0.20.1  jira.internal
127.0.21.1  jira1.internal
127.0.22.1  jira2.internal
127.0.23.1  jira3.internal
127.0.30.1  confluence.internal
127.0.40.1  bitbucket.internal
127.0.70.1  bamboo.internal
127.0.80.1  crowd.internal
127.0.90.1  pgadmin.internal
```
### You need also verify the .env file:
````bash
# Location there you have clone this repo to, like:
PWD=/home/lars/Develop/Docker/Jira-DataCenter-Sandbox-Environment

# Jira ENV
DOCKER_IMAGE=atlassian/jira-core:9.11.1
ATL_PROXY_NAME=jira.internal
ATL_TOMCAT_SCHEME=https
ATL_PROXY_PORT=443
JVM_MINIMUM_MEMORY=2G
JVM_MAXIMUM_MEMORY=4G
JVM_SUPPORT_RECOMMENDED_ARGS=-Datlassian.plugins.enable.wait=600

# Postgres Database
POSTGRES_USER=postgres
POSTGRES_PASSWORD=Incorrect
APP_DB_USER=jiradbuser
APP_DB_PASS=jirapass
APP_DB_NAME=jiradb

````

## To reset the installation:
You need to set right owner on the folder of jira before the first run. 
````bash
$ rm -Rf ./pgdata
$ rm -Rf ./jira
$ mkdir ./jira ./jira/shared 
$ chown -R 2001:2001 ./jira
````
You can also run the script:
````bash
$ sudo ./reset.sh
````
## The first run!
Jira Datacenter need to conf on only one node first.
To startup, try to use the script:
````bash
$ sudo ./firstrun.sh
````
And follow the info in this script...

When you are up on all nodes, you will be able to access jira like this:
* http://jira.internal
* http://jira.internal/?node=jira-node3
* http://jira2.internal

> [!WARNING]
> This function to shift node is not 100% whit Jira, I'll say, it's do not working at all yet! I need to look in to it and if there any function to tell HAProxy to stick to the next node. 

HAProxy supports Session Cookie, so set then checkmark: "Remember my login" when you are loging in to Jira.

## Grafana and Prometheus
This page can give you a nice start for setting this up:
* https://confluence.atlassian.com/adminjiraserver/monitor-jira-with-prometheus-and-grafana-1155466715.html
* https://github.com/atlassian-labs/DC-App-monitoring-EAP-dashboards

## Nodered Flow
Import this file as a flow:
````
nodered-flow-check-status-on-nodes.json
````
And you are able to check the status on each node.


## Verify Cluster function in Jira
The script:
````
check_cluster_function.sh
````
Will restart Jira nodes one by one... so you can try to work in Jira while it´s running.
