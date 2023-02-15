DOCKER_COMPOSE_CMD = docker-compose -f docker-compose-local.yml

# === Local ===

run:
	${DOCKER_COMPOSE_CMD} run --service-ports --rm web bash

up:
	${DOCKER_COMPOSE_CMD} up web

kill:
	${DOCKER_COMPOSE_CMD} kill web

ps:
	${DOCKER_COMPOSE_CMD} ps

# === Production ===

deploy_nginx:
	scp -P 25203 nginx/app.conf app@ssh.rosti.cz:/srv/conf/nginx.d/app.conf & ssh app@ssh.rosti.cz -p 25203 'supervisorctl restart nginx'

deploy:
	rostictl up

status:
	rostictl status

ssh:
	ssh app@ssh.rosti.cz -p 25203  # requires SSH key
