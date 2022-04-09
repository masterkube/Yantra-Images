git clone https://github.com/masterkube/Dump-Files.git
if [ $? -eq 0 ]
then
echo "Repo cloned ..."
cd Dump-Files
else
echo "Using existing Repo ..."
cd Dump-Files
git pull
fi

mysqlip=$(docker inspect mysqldoc --format='{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}')
apt install mysql-client
mysql -uroot -proot -h $mysqlip
drop database masterkubedb;
create database masterkubedb;
source $1;
exit

cd ..

docker exec -it axon3 bash
rm webapps/Axon/WEB-INF/classes/ActualDetails.properties
rm webapps/Axon/WEB-INF/classes/ApprovedDetails.xml
rm webapps/Axon/WEB-INF/classes/mkpubkey
rm webapps/Axon/WEB-INF/classes/sig
cp ActualDetails.properties webapps/Axon/WEB-INF/classes/
cp ApprovedDetails.xml webapps/Axon/WEB-INF/classes/
cp mkpubkey webapps/Axon/WEB-INF/classes/
cp sig webapps/Axon/WEB-INF/classes/
exit

echo "Loaded Data to the Axon"
