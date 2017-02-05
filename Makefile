.PHONY: build push

NS = gopherci
REPO = gopherci-env
VERSION ?= latest

build:
	docker image build -t $(NS)/$(REPO):$(VERSION) .

build-no-cache:
	docker image build --pull --no-cache -t $(NS)/$(REPO):$(VERSION) .

push:
	docker image push $(NS)/$(REPO):$(VERSION)

default: build
