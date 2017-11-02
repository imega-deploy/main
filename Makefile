deploy-imega-deploy-deployer:
	TAG=$(TAG) docker stack deploy -c imega-deploy/deployer/conf.yml imega-deploy-deployer

