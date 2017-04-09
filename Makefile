IMAGE=deliverous/graphite-beacon
VERSION=$(shell date +%Y%m%d)

build:
	docker build --pull -t ${IMAGE} .
	docker tag ${IMAGE} ${IMAGE}:${VERSION}

push: build
	docker push ${IMAGE}
	docker push ${IMAGE}:${VERSION}
