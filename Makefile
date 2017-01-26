.PHONY: build push

NS = bradleyfalzon
REPO = gopherci-env
VERSION ?= latest

build:
	docker build -t $(NS)/$(REPO):$(VERSION) .

build-no-cache:
	docker build --pull --no-cache -t $(NS)/$(REPO):$(VERSION) .

push:
	docker push $(NS)/$(REPO):$(VERSION)

default: build
