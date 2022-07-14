#install docker
sudo apt-get remove docker.io
mkdir /var/lib/docker/containers/
sudo apt-get update
sudo apt install docker.io
sudo snap install docker
docker --version
