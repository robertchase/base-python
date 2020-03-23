.PHONY: bash build

ifeq ($(GIT),)
  GIT := $(HOME)/git
endif

IMAGE := base-python
WORKING := -w /opt/git/base-python
VOLUMES := -v=$(GIT):/opt/git

DOCKER := docker run $(OPT) -it --rm  $(VOLUMES) $(WORKING) $(IMAGE)

shell:
	$(DOCKER) /bin/bash

build:
	docker build -t $(IMAGE) -f Dockerfile .
	docker build -t $(IMAGE)-sql -f Dockerfile-sql .
