.PHONY: help install version clean

help:
	@cat $(firstword $(MAKEFILE_LIST))

install: \
	node_modules

version:
	npx --no -- cdk --version

node_modules:
	npm install

clean:
	rm -rf node_modules
