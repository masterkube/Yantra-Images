# to take backup and store in the date when the backup is taken
docker exec mysqldoc /usr/bin/mysqldump -u root --password=root masterkubedb > "$(date +"%Y_%m_%d_%I_%M_%p").sql"
docker commit axon3 "axon_$(date +"%Y_%m_%d_%I_%M_%P")"
cp "$(date +"%Y_%m_%d_%I_%M_%p").sql" .
