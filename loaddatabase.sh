#to load a sql file to db cmd: loaddatabase.sh mydata.sql
git pull

#to get internal ip of the mysql container
mysqlip=$(docker inspect mysqldoc --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}')
apt install mysql-client
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
