GO_PIPELINE_LABEL?=dev
VERSION?=$(GO_PIPELINE_LABEL)

build:
	docker build -t drewsonne/docker-airflow-server:$(VERSION) .

push:
	docker push drewsonne/docker-airflow-server:$(VERSION)

publish: build push