IMAGE=caretdev/instruqt-jupyter-notebook
PLATFORMS=--platform linux/amd64,linux/arm64

build:
	docker build --pull -t $(IMAGE) . --progress=plain

deploy:
	docker buildx build $(PLATFORMS) --pull --no-cache --push -t $(IMAGE) . --progress=plain
