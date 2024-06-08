#!/bin/bash
clear
    

sudo docker stack deploy -c ./adguard/docker-compose.yml traefik  
sudo docker stack deploy -c ./portainer/docker-compose.yml traefik 
sudo docker stack deploy -c ./Who/docker-compose.yml  traefik
sudo docker stack deploy -c ./mysql/docker-compose.yml traefik  
sudo docker stack deploy -c ./mariaDB/docker-compose.yml traefik  
sudo docker stack deploy -c ./influxdb/docker-compose.yml traefik  
sudo docker stack deploy -c ./traefik/docker-compose.yml traefik  
sudo docker stack deploy -c ./grafana/docker-compose.yml traefik    
sudo docker stack deploy -c ./wordpress/docker-compose.yml  traefik 
sudo docker stack deploy -c ./wordpress-marquinhos/docker-compose.yml  traefik
sudo docker stack deploy -c ./bitwarden/docker-compose.yml  traefik
sudo docker stack deploy -c ./redis/docker-compose.yml  traefik
sudo docker stack deploy -c ./guugru/docker-compose.yml  traefik 
sudo docker stack deploy -c ./node-red/docker-compose.yml  traefik
sudo docker stack deploy -c ./jellyfin/docker-compose.yml  traefik


sudo docker stack deploy -c ./iot-metrics/docker-compose.yml  traefik
 
