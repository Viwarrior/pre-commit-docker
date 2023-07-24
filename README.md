# **Pre-Commit-Docker**
Docker image to run pre-commit hooks (https://pre-commit.com/) inside docker container.

## About
As part of pre-commit hook this will create docker container, run pre-commit hooks inside and will remove container
upon completion. 

## Pre-requisites
* docker

## **Usage**

## Build Image
```
docker build -t pre-commit-docker -f Dockerfile.pre-commit .
```

## Pre-commit config
 Create .pre-commit-config.yaml in repository's base dir (see https://pre-commit.com/#2-add-a-pre-commit-configuration)


## Run Container
Inside .git/hooks/pre-commit file add following
```
#!/bin/sh
docker run --rm -v $(git rev-parse --show-toplevel)/:/usr/local/app/ -v /usr/local/app/.git/hooks/ \
--name pre-commit-run pre-commit-docker
```

## Examples
See `example-repo` for reference.