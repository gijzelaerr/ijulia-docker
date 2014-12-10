#!make
IMAGE=gijzelaerr/ijulia

.PHONY: build run

all: build run

build:
	docker build -t $(IMAGE) .

run: build
	docker run -it -p 8888:8888 -v $(realpath  notebooks):/notebooks:rw $(IMAGE)
