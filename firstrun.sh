echo "Start the containers..."
docker-compose up -d
echo "Wait..."
sleep 30
echo "Need to stop Jira Nodes!"
docker-compose stop jira-node1
docker-compose stop jira-node2
docker-compose stop jira-node3
sleep 10
echo "You need to do the first conf on only one node, I start node1!"
docker-compose start jira-node1
./_wait.sh FIRST_RUN
echo "Do not look on this script, go to the browser and start conf Jira!"
echo "Open in your browser: http://jira.internal"
echo "It will take some time to startup, the Postgres script will run and setup a database for Jira."
echo "Take the time for get a nice license for Jira, you will need it!"
./_wait.sh RUNNING
echo "Done conf! Nice! then I will stop node1, and start node2..."
sleep 5
docker-compose stop jira-node1
sleep 10
docker-compose start jira-node2
./_wait.sh RUNNING
echo "Node2 is up, then I startup node1 & node3!"
docker-compose start jira-node1
docker-compose start jira-node3
echo "In Jira, go to System meny / Appliactions, you can add JSM!"
sleep 10
echo "I'm done!"
sleep 1
