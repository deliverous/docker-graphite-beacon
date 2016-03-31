IMAGE=deliverous/graphite-beacon

build:
	docker build --pull -t ${IMAGE} .

push: build
	docker push ${IMAGE}
