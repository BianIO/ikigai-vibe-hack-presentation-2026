IMAGE ?= route-deck
PORT ?= 3030
PWD := $(CURDIR)

.PHONY: all build run clean

all: build run

build:
	docker build -t $(IMAGE) .

run:
	@echo "Starting slides at http://localhost:$(PORT)"
	-docker rm -f $$(docker ps -q --filter "ancestor=$(IMAGE)") 2>/dev/null || true
	-docker rm -f $$(docker ps -q --filter "publish=$(PORT)") 2>/dev/null || true
	docker run --rm --user node -p $(PORT):3030 -v "$(PWD)/slides.md:/slidev/slides.md" -v "$(PWD)/assets:/slidev/assets" $(IMAGE)

clean:
	-docker rm -f $$(docker ps -q --filter "ancestor=$(IMAGE)") 2>/dev/null || true
