install:
	git pull
	helm upgrade -i $(appName) . -f env-dev/$(appName).yaml -n app --create-namespace

all:
	git pull
	make install appName=frontend
	make install appName=catalogue
	make install appName=cart
	make install appName=user
	make install appName=shipping
	make install appName=payment

destroy_all:
	git pull
	make destroy appName=frontend
	make destroy appName=catalogue
	make destroy appName=cart
	make destroy appName=user
	make destroy appName=shipping
	make destroy appName=payment	

destroy:
	git pull
	helm uninstall $(appName) -n app