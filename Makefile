default: dev copy_appengine_config

dev:
	gulp serve

copy_appengine_config:
	cp app.yaml dist/app.yaml

appengine_dev: copy_appengine_config
	dev_appserver.py dist/

appengine_deploy: copy_appengine_config
	appcfg.py -A bright-modem-108119 update dist/