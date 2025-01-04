# script to setup the container for the axon
docker network create axon-net
docker run -d --restart=always --net axon-net --name mysqldoc axonnetwork/yantra.classic.store:1.0
docker run -d --restart=always -p 3000:8080 --net axon-net --link mysqldoc --name axon3 axonnetwork/yantra.classic.eval:1.0
docker run -d --restart=always -p 8000:8080 --net axon-net --link mysqldoc --name dyndagservice axonnetwork/yantra.classic.service:1.0
#docker run -d --restart=always -p 83:80 --name proxy masterkube/proxy:1.0

sleep 10 

#to get internal ip of the mysql container
mysqlip=$(docker inspect mysqldoc --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}')
sudo apt install mysql-client
mysql -uroot -proot -h$mysqlip -e "create database masterkubedb;"
mysql -uroot -proot -h$mysqlip -e "drop database masterkubedb; create database masterkubedb; use masterkubedb; source $1;"
#mysql -uroot -proot -h$mysqlip -e "create database maste114_axondb;"
#mysql -uroot -proot -h$mysqlip -e "drop database maste114_axondb; create database maste114_axondb; use maste114_axondb; source maste114_axondb.sql;"



docker exec axon3 bash -c "
rm webapps/Axon/WEB-INF/classes/ActualDetails.properties;
rm webapps/Axon/WEB-INF/classes/ApprovedDetails.xml;
rm webapps/Axon/WEB-INF/classes/mkpubkey;
rm webapps/Axon/WEB-INF/classes/sig;
cp ActualDetails.properties webapps/Axon/WEB-INF/classes/;
cp ApprovedDetails.xml webapps/Axon/WEB-INF/classes/;
cp mkpubkey webapps/Axon/WEB-INF/classes/;
cp sig webapps/Axon/WEB-INF/classes/;
"

echo "Loaded Data to the Axon"
