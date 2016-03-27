##
## create docker image for indigo-tork
##
## `make run` to test within the docker
##

# http://eli.thegreenplace.net/2013/12/18/makefile-functions-and-color-output
include ../color.mk

all: Dockerfile
	$(call colorecho, "docker info")
	docker info
	$(call colorecho, "docker images")
	docker images
	$(call colorecho, "docker build")
	docker build -t indigo-tork .
	$(call colorecho, "docker images")
	docker images indigo-tork

run:
	docker run --rm --env="DISPLAY" --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" -i -t indigo-tork /bin/bash

clean:
	# rm old docker image
	$(call colorecho, "rm old docker images")
	docker images | grep none && docker rmi $$(docker images | awk '/^<none>/ { print $$3 }') || echo "oK"

allclean:
	$(call colorecho, "rm stpped containers")
	test `docker ps | wc -l` -gt 1 && docker ps -a | tail -n +2 | cut -d\  -f1 | xargs docker rm || echo "ok"
	make clean

