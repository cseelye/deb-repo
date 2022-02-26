SHELL = /bin/bash

.DEFAULT_GOAL := repo

container:
	docker image build -t deb-tools .

repo: container
	docker container run --rm -it -v $$(pwd):/work -w /work deb-tools ./scan-repo

