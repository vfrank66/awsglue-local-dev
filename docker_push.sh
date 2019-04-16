#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin
docker push vfrank66/awsgluespark-submit:2.2.1-hadoop2.7