install:
	helm upgrade -i $(appName) . -f env-dev/$(appName).yaml