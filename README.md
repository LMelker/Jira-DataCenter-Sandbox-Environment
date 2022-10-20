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

## To reset the installation:
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
http://jira.internal
http://jira.internal/?node=jira-node3
http://jira2.internal

HAProxy supports Session Cookie, so set then checkmark: "Remeber my login"
