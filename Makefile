all: build

build:
	@docker build --tag=eldis/postgresql -f docker/Dockerfile .

release: build
	@docker build --tag=nexus.corp.eldis.ru:8082/eldis/postgresql:$(shell cat docker/VERSION) -f docker/Dockerfile .
