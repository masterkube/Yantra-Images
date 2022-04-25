#to load a sql file to db cmd: loaddatabase.sh mydata.sql
git pull

#to get internal ip of the mysql container
#mysqlip=$(docker inspect mysqldoc --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}')
apt install mysql-client
docker exec mysqldoc bash -c "mysql -uroot -proot; drop database masterkubedb; create database masterkubedb; source $1;"


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
