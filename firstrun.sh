echo "Start the containers..."
docker-compose up -d
echo "Wait..."
sleep 30
echo "Need to stop Jira Nodes!"
docker-compose stop jira-node1
docker-compose stop jira-node2
sleep 10
echo "You need to conf on only one node!"
docker-compose start jira-node1
echo "Do not look on this script, go to the browser and start conf Jira!"
./_wait.sh
echo "Done conf! Nice! then I will stop node1, and start node2..."
docker-compose stop jira-node1
sleep 10
docker-compose start jira-node2
./_wait.sh
echo "Node2 is up, then I startup node1!"
docker-compose start jira-node1
echo "In Jira, go to System meny / Appliactions, and add JSW or / and JSM!"
sleep 10
echo "I'm done!"
sleep 1
