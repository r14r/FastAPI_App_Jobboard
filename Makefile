HERE := ${CURDIR}

CONTAINER := playground_fastapi_jobboard

build:
	DOCKER_SCAN_SUGGEST=false docker build -t ${CONTAINER} .

run:
	docker run  --hostname docker -p 8000:8000 -v ${HERE}/workspace:/workspace -it ${CONTAINER}

