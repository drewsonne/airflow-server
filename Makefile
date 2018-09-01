GO_PIPELINE_LABEL?=dev
VERSION?=$(GO_PIPELINE_LABEL)

build:
	docker build -t drewsonne/airflow-server:$(VERSION) .

push:
	docker push drewsonne/airflow-server:$(VERSION)

publish: build push