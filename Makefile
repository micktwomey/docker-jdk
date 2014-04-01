TAG=micktwomey/jdk
build:
	docker build -t $(TAG) .

shell:
	docker run -i -t $(TAG) /bin/bash
