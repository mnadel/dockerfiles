build:
	docker build -t mnadel/gnu:latest .

login:
	cred .docker.hub | docker login --password-stdin --username=mnadel

push: login build
	docker push mnadel/gnu:latest

run: build
	docker run -it --rm -v $(HOME):/mnt/home -v /:/mnt/host mnadel/gnu:latest
