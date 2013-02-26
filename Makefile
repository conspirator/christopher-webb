.PHONY: install dev server

install:
	npm install

dev:
	grunt

server:
	coffee app.coffee

clean:
	rm -rf css
	rm -rf images
	rm -rf js
	rm index.html
	rm CNAME

deploy:
	rm -rf node_modules
	rm -rf src
	rm app.coffee
	rm Gruntfile.coffee
	rm package.json
	rm README.md
	mv public/* .
	rm -rf public
	rm Makefile
	say 'boom'