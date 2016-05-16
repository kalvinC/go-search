#makefile

VPATH=./src

WORK_PATH=$(shell pwd)

main:main.go
	go build -o $@ $^
	mv $@ ./bin

PHONY:clean, env

clean:
	rm -rf ./main
	go clean

env:
	export GOPATH=$(WORK_PATH)
