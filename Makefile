.PHONY: test

run:
	docker build -t intro-to-concourse .
	docker run -p 3000:3000 intro-to-concourse npm run start

test:
	docker build -t intro-to-concourse .
	docker run intro-to-concourse npm test

start-concourse:
	docker-compose -f ci/docker-compose.concourse.yaml up -d --remove-orphans

stop-concourse:
	docker-compose -f ci/docker-compose.concourse.yaml down