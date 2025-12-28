IMG:=ghcr.io/sgmitchell/seerr:test

build-and-push:
	docker build --platform linux/amd64 --build-arg COMMIT_TAG=local -t $(IMG) .
	docker push $(IMG)
