all:
	run

run:
	docker run --rm -p 3030:3030 -v "slides.md:/app/slides.md" route-deck