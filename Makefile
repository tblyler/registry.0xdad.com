.PHONY: build
build:
	reg server --once registry.0xdad.com
	../precompress/precompress ./static/

.PHONY: deploy
deploy: build
	rsync --delete -hrvP ./static/ punk-deploy:/www/registry.0xdad.com/
