# intro-to-concourse

This repo contains the supporting code for a tutorial on getting started with Concourse. In particular, this repo is used to demonstrate the use of Concourse to accomplish the following:

- run tests
- update a GitHub PR's status
- build a docker image
- publish a docker image
- comment on a PR with the pushed docker image's tag

## Start Concourse

Concourse can be started with docker-compose using an included make target:

```
# with docker-compose directly
docker-compose -f ci/docker-compose.concourse.yaml up -d --remove-orphans

# or, with a convenience make target
make start-concourse
```

You can stop Concourse with the following:

```
# with docker-compose directly
docker-compose -f ci/docker-compose.concourse.yaml down

# or, with make
make stop-concourse
```
