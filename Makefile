deploy-imega-deploy-deployer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/deployer/conf.yml imega-deploy-deployer

deploy-imega-deploy-balancer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/balancer/conf.yml imega-deploy-balancer
