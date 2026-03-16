login:
	cred .docker.hub | docker login --password-stdin --username=mnadel

linux.build:
	docker build -t mnadel/linux:latest . -f Dockerfile.linux

linux.push: login linux.build
	docker push mnadel/linux:latest

linux.run: linux.build
	#docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home -v /:/mnt/host mnadel/linux:latest
	docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home mnadel/linux:latest

gnu.build:
	docker build -t mnadel/gnu:latest . -f Dockerfile.gnu

gnu.push: login gnu.build
	docker push mnadel/gnu:latest

gnu.run: gnu.build
	#docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home -v /:/mnt/host mnadel/gnu:latest
	docker run -it --rm -v $(HOME)/.dockerfs:/mnt/home mnadel/gnu:latest

.PHONY: login