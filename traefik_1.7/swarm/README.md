# swarm stack
```bash
docker network create --driver=overlay web

touch /opt/traefik/docker-compose.yml
touch /opt/traefik/acme.json && chmod 600 /opt/traefik/acme.json
touch /opt/traefik/traefik.toml

docker stack deploy -c docker-compose.yml traefik
docker stack deploy -c whoami-stack.xophe.yaml whoami
```



