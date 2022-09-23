# script to setup the container for the axon
docker login
docker network create axon-net
docker run -d --net axon-net --name mysqldoc masterkube/axonmysql:3.0
docker run -d -p 3000:8080 --net axon-net --link mysqldoc --name axon3 masterkube/axon:3.0
docker run -d --name console -p 80:80 masterkube/console:2.0
docker run -d --name voice -p 90:80 -p 92:443 masterkube/axonvoice:1.0
docker run -d -p 8000:8080 --net axon-net --link mysqldoc --name axonapi masterkube/axonapi:1.0
#docker run -d -p 4000:80 --net axon-net --link mysqldoc --name axonweb masterkube/axonweb:3.0
