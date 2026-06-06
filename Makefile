# Assign the current working directory using Make's native shell function
PWD := $(shell pwd)

.PHONY: all run

all: run

run:
	docker run --rm -p 3030:3030 -v "$(PWD)/slides.md:/app/slides.md" -v "$(PWD)/assets:/app/assets" route-deck
