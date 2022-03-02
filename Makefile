SHELL = /bin/bash

.DEFAULT_GOAL := repo

INTERACTIVE:=$(shell [ -t 0 ] && echo 1)
ifeq ($(INTERACTIVE),1)
	TTY = --tty
else
	TTY =
endif

container:
	docker image build -t deb-tools .

repo: container
	docker container run \
        --rm \
        --interactive \
        $(TTY) \
        --init \
        --volume $$(pwd):/work \
        --workdir /work \
        --name deb-repo-build \
        deb-tools \
		./scan-repo
