deploy-imega-deploy-deployer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/deployer/conf.yml imega-deploy-deployer

deploy-imega-deploy-balancer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/balancer/conf.yml imega-deploy-balancer

deploy-imega-teleport-bus:
	docker stack deploy -c imega-teleport/rabbitmq/conf.yml imega-teleport-bus

deploy-imega-teleport-bremen:
	TAG=$(TAG) docker stack deploy -c imega-teleport/bremen/conf.yml imega-teleport-bremen

deploy-imega-teleport-auth:
	TAG=$(TAG) docker stack deploy -c imega-teleport/auth/conf.yml imega-teleport-auth
