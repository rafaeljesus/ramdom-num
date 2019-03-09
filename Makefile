.PHONY: all clean build build-docker

all: clean deps test build

build:
	/bin/sh -c "./build.sh"

build-docker:
	@docker build -t rafaeljesus/random-num .

run-docker:
	@docker run rafaeljesus/random-num

clean:
	@go clean
	@rm -rf dist
