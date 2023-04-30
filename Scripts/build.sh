#!/bin/bash
clear
source /root/Pi-Swarm/config.env

if [ $1 = "Local" ]; then
    echo "Executando localmente"
    sudo docker stack deploy -c ./traefik/docker-compose-local.yml traefik  
    sudo docker stack deploy -c ./grafana/docker-compose-local.yml traefik    
    sudo docker stack deploy -c ./wordpress/docker-compose-local.yml  traefik
    sudo docker stack deploy -c ./Who/docker-compose-local.yml  traefik
    sudo docker-compose -f /home/vm2/Home-Lab/mysql/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/AD_Guard/docker-compose.yml up -d 
    sudo docker-compose -f /home/vm2/Home-Lab/influx/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/portainer/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/node-red/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/zomboid-dedicated-server/docker-compose.yaml up -d
else
    echo "Executando em cluster"
    sudo docker stack deploy -c ./traefik/docker-compose.yml traefik  
    sudo docker stack deploy -c ./grafana/docker-compose.yml traefik    
    sudo docker stack deploy -c ./wordpress/docker-compose.yml  traefik
    sudo docker stack deploy -c ./Who/docker-compose.yml  traefik
    sudo docker-compose -f /home/vm2/Home-Lab/mysql/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/AD_Guard/docker-compose.yml up -d 
    sudo docker-compose -f /home/vm2/Home-Lab/influx/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/portainer/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/node-red/docker-compose.yml  up --build -d
    sudo docker-compose -f /home/vm2/Home-Lab/zomboid-dedicated-server/docker-compose.yaml up -d
fi