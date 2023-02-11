.PHONY: help

TAG := hello-cdk-iam

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(TAG) .

bash:
	docker run -it --rm $(TAG) $@

clean:
	docker image rm $(TAG)
