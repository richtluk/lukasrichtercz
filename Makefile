DOCKER_COMPOSE_CMD = docker-compose -f docker-compose-local.yml

# Roští ssh - requires SSH key
ROSTI_SSH_PORT = 25203
ROSTI_SSH_USER = app
ROSTI_SSH_HOSTNAME = ssh.rosti.cz
ROSTI_SSH = ssh ${ROSTI_SSH_USER}@${ROSTI_SSH_HOSTNAME} -p ${ROSTI_SSH_PORT}

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

deploy:
	rostictl up

deploy_nginx:
	scp -P ${ROSTI_SSH_PORT} conf/nginx/app.conf ${ROSTI_SSH_USER}@${ROSTI_SSH_HOSTNAME}:/srv/conf/nginx.d/app.conf & \
	${ROSTI_SSH} 'supervisorctl restart nginx'

deploy_index:
	scp -P ${ROSTI_SSH_PORT} app/static/index.html ${ROSTI_SSH_USER}@${ROSTI_SSH_HOSTNAME}:/srv/app/app/static/index.html

deploy_supervisor_nginx:
	scp -P ${ROSTI_SSH_PORT} conf/supervisor/nginx.conf ${ROSTI_SSH_USER}@${ROSTI_SSH_HOSTNAME}:/srv/conf/supervisor.d/nginx.conf & \
	${ROSTI_SSH} 'supervisorctl reread & supervisorctl update'

status:
	rostictl status

ssh:
	${ROSTI_SSH}
