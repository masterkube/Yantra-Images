docker system prune -a --force
docker network rm axon-net
docker container stop $(docker container ls -aq)
docker container rm $(docker container ls -aq)
docker rmi $(docker image ls)
docker volume rm $(docker volume ls -q)
