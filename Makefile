ifeq ($(mode),debug)
flags += -d
endif

all:
	@echo Use with target: config build test

config:
	@node-gyp $(flags) configure

build:
	@node-gyp $(flags) build

test:
	@cd test && node simple
	@cd test && node queue
	@cd test && node brutal
	@cd test && node lessdata

.PHONY: config build test
