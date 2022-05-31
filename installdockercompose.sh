sudo curl -L "https://github.com/docker/compose/releases/download/v2.6.0/docker-compose-linux-x86_64" -o docker-compose
cp docker-compose  /usr/bin/docker-compose
rm docker-compose
sudo chmod +x /usr/bin/docker-compose
docker-compose -v
