[![Build Status](https://www.travis-ci.com/vfrank66/awsglue-local-dev.svg?branch=master)](https://www.travis-ci.com/vfrank66/awsglue-local-dev)
[![DepShield Badge](https://depshield.sonatype.org/badges/vfrank66/awsglue-local-dev/depshield.svg)](https://depshield.github.io)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/7544f4129969430fa5a4539d92970597)](https://www.codacy.com/app/vfrank66/awsglue-local-dev?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=vfrank66/awsglue-local-dev&amp;utm_campaign=Badge_Grade)

# Shoutout to BDE2020

Big thanks for all the setup material provided by https://github.com/big-data-europe/docker-spark.

# awsglue-local-dev

A local development setup for AWS Glue, modified from https://github.com/big-data-europe/docker-spark

This will build nightly due to how it pulls the AWS Glue scala .jar and the AWS Glue PyGlue.zip file from an s3 public repo, which is also the same jars included in the AWS Glue environment.

You can use repo to get compile time and spark/aws glue some unit testing coverage which you would not otherwise be able to get through deploying through a expensive AWS Glue DevEndpoint!

# Example 

