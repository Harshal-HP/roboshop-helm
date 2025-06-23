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