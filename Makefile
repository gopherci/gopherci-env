.PHONY: build push

NS = gopherci
REPO = gopherci-env
VERSION ?= latest

build:
	docker image build -t $(NS)/$(REPO):$(VERSION) .

build-no-cache:
	docker image build --pull --no-cache -t $(NS)/$(REPO):$(VERSION) .

push:
	# Don't need to do this anymore, autobuilders will take care of pushing
	docker image push $(NS)/$(REPO):$(VERSION)

default: build
