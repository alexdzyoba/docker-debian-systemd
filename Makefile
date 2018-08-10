.PHONY: build push
build:
	docker build -t alexdzyoba/debian-systemd:9 .

push:
	docker push alexdzyoba/debian-systemd
