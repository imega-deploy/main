create_network:
	docker network create --driver overlay --attachable $NETWORK

create_volume:
	docker volume create $VOLUME

deploy-imega-deploy-deployer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/deployer/conf.yml imega-deploy-deployer

deploy-imega-deploy-balancer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/balancer/conf.yml imega-deploy-balancer

deploy-imega-teleport-bus:
	docker stack deploy -c imega-teleport/rabbitmq/conf.yml imega-teleport-bus

deploy-imega-teleport-bremen:
	TAG=$(TAG) docker stack deploy -c imega-teleport/bremen/conf.yml imega-teleport-bremen

deploy-imega-teleport-1s-receiver:
	TAG=$(TAG) docker stack deploy -c imega-teleport/1s-receiver/conf.yml imega-teleport-1s-receiver

deploy-imega-teleport-auth:
	TAG=$(TAG) docker stack deploy -c imega-teleport/auth/conf.yml imega-teleport-auth

deploy-imega-teleport-db:
	TAG=$(TAG) docker stack deploy -c imega-teleport/db/conf.yml imega-teleport-db

deploy-imega-deploy-log:
	docker stack deploy -c imega-deploy/log/conf.yml imega-deploy-log

deploy-imega-teleport-commerceml2teleport:
	TAG=$(TAG) docker stack deploy -c imega-teleport/commerceml2teleport/conf.yml imega-teleport

deploy-imega-teleport-teleport-server:
	TAG=$(TAG) docker stack deploy -c imega-teleport/teleport-server/conf.yml imega-teleport-teleport-server
