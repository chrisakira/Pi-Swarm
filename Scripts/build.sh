clear

export traefik_email="$1"

export grafana_user="$2"
export grafana_passwd="$3"
 
export mysql_root="$4"
export mysql_database="$5"
export mysql_user="$6"
export mysql_passwd="$7"

export word_domain="$8"

export nodes_number="$9"

sudo docker stack deploy -c /home/<Meu Usuario>/Pi-Swarm/traefik/docker-compose.yml traefik  
sudo docker stack deploy -c /home/<Meu Usuario>/Pi-Swarm/grafana/docker-compose.yml traefik    
sudo docker stack deploy -c /home/<Meu Usuario>/Pi-Swarm/wordpress/docker-compose.yml  traefik
sudo docker stack deploy -c /home/<Meu Usuario>/Pi-Swarm/Who/docker-compose.yml  traefik
 