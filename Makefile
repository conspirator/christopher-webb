.PHONY: install dev server

install:
	npm install

dev:
	grunt

server:
	coffee app.coffee