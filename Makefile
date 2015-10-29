
copy_appengine_file:
	gulp
	cp -v app.yaml app/app.yaml
	cp -v app.yaml dist/app.yaml

appengineDeploy: copy_appengine_file
	/Users/nawaid/google-cloud-sdk/platform/google_appengine/appcfg.py -A copper-seeker-734 update dist

