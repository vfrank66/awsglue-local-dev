#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push vfrank66/awsglue-local-dev:spark-submit2.2.1-hadoop2.7