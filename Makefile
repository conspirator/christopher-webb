.PHONY: install dev server

install:
	npm install

dev:
	grunt

server:
	coffee app.coffee

clean:
	rm -rf css images js
	rm index.html humans.txt CNAME

deploy:
	mv public/* .
	rm -rf node_modules src public
	rm app.coffee Gruntfile.coffee package.json README.md Makefile
	say 'boom'