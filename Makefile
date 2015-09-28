default: dev copy_appengine_config

generate:
	gulp clean
	gulp

dev_server:
	gulp clean
	gulp serve

copy_appengine_config:
	cp app.yaml dist/app.yaml

appengine_dev: generate copy_appengine_config
	dev_appserver.py dist/

appengine_deploy: generate copy_appengine_config
	appcfg.py -A bright-modem-108119 update dist/