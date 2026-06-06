IMAGE := slidev-dev

.PHONY: dev

dev:
	docker build -t $(IMAGE) .
	docker run --rm -it --network host --user node -e CHOKIDAR_USEPOLLING=true -v "$(CURDIR):/slidev" $(IMAGE)