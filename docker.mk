.PHONY: help build bash clean

TAG := tamakiii-sandbox/hello-cdk-iam

help:
	@cat $(firstword $(MAKEFILE_LIST))

build: Dockerfile
	docker build -t $(TAG) .

bash: build
	docker run \
		-it \
		--rm \
		--volume $(HOME)/.aws:/root/.aws \
		--volume $(PWD):/var/lib/tamakiii-sandbox/hello-cdk-iam \
		--workdir /var/lib/tamakiii-sandbox/hello-cdk-iam \
		$(TAG) \
		$@

clean:
	docker image rm $(TAG)
