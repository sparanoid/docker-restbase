all: build

build:
	docker build -t sparanoid/restbase:latest .

run:
	docker run --rm -p 7231:7231 --name restbase sparanoid/restbase:latest

daemon:
	docker run -d --rm -p 7231:7231 --name restbase sparanoid/restbase:latest

push:
	docker push sparanoid/restbase:latest

stop:
	docker rm -f restbase

clean:
	docker rmi sparanoid/restbase:latest
