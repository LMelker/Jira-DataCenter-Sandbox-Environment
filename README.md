# Jira-DataCenter-Sandbox-Environment
Play with Jira in a Dataceter setup

## Pre-conf
### Setup the hosts file
You need to add this hosts in your "hosts"-file:

```bash
# Docker Jira Sandbox
127.0.0.1  jira.internal
127.0.0.1  nodered.internal
```

## To reset the installation:
````bash
rm -R -f pgdata/
rm -R -f jira/
mkdir jira
chown -R 2001:2001 jira/
````
You can also run the script:
````bash
./reset.sh
````
## The first run!
Jira Datacenter need to conf on only one node first.
To startup, try to use the script:
````bash
./firstrun.sh
````
And follow the info in this script...

