#!/bin/bash
clear
   
# sudo docker-compose -f ./node-red/docker-compose.yml  up --build -d  

# sudo docker stack deploy -c ./adguard/docker-compose.yml traefik  
# sudo docker stack deploy -c ./portainer/docker-compose.yml traefik  


sudo docker stack deploy -c ./Who/docker-compose.yml  traefik
sudo docker stack deploy -c ./mysql/docker-compose.yml traefik  
sudo docker stack deploy -c ./influxdb/docker-compose.yml traefik  
sudo docker stack deploy -c ./traefik/docker-compose.yml traefik  
sudo docker stack deploy -c ./grafana/docker-compose.yml traefik    
sudo docker stack deploy -c ./wordpress/docker-compose.yml  traefik
sudo docker stack deploy -c ./passbolt/docker-compose.yaml  traefik


sudo systemctl start systemd-resolved
sudo systemctl enable systemd-resolved