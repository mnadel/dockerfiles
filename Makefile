login:
	cred .docker.hub | docker login --password-stdin --username=mnadel

build-linux:
	docker build -t mnadel/linux:latest . -f Dockerfile.linux

push-linux: login build-linux
	docker push mnadel/linux:latest

run-linux: build-linux
	#docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home -v /:/mnt/host mnadel/linux:latest
	docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home mnadel/linux:latest

build-gnu:
	docker build -t mnadel/gnu:latest . -f Dockerfile.gnu

push-gnu: login build-gnu
	docker push mnadel/gnu:latest

run-gnu: build-gnu
	#docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home -v /:/mnt/host mnadel/gnu:latest
	docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home mnadel/gnu:latest

.PHONY: login
