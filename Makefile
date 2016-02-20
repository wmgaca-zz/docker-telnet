.PHONY: build

.DEFAULT_GOAL: build

build:
	docker build -t wmgaca/telnet:latest .
