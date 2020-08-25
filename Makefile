.PHONY: test

test:
	docker build -t christherama/express-api:local-test .
	docker run christherama/express-api:local-test npm test

start-concourse:
	docker-compose -f ci/docker-compose.concourse.yaml up -d --remove-orphans

stop-concourse:
	docker-compose -f ci/docker-compose.concourse.yaml down