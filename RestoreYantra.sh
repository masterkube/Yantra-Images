docker stop axon3
docker rm axon3
docker run -d -p 3000:8080 --net axon-net --link mysqldoc --name axon3 "$1"
