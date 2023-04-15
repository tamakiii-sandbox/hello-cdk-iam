.PHONY: help build bootstrap deploy

export AWS_PROFILE ?=
export AWS_REGION ?=

help:
	@cat $(firstword $(MAKEFILE_LSIT))

build:
	npx --no -- tsc

bootstrap:
	npx --no -- cdk bootstrap

deploy:
	npx --no -- cdk deploy