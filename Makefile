.PHONY: all clean build build-docker all-docker

all: clean build run

build:
	/bin/sh -c "./build.sh"

run:
	./dist/random-num

build-docker:
	@docker build -t rafaeljesus/random-num .

run-docker:
	@docker run rafaeljesus/random-num

all-docker:
	@make clean
	@make build
	@make build-docker
	@make run-docker

clean:
	@go clean
	@rm -rf dist
