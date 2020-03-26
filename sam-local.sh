#!/bin/sh
mkdir -p build/
cp ../../dockerhub/graalvm-ce-java11-linux-amd64-20.0.0.tar.gz ./build/
docker build -f Dockerfile.jdk11 . -t aws-func
mkdir -p build
docker run --rm --entrypoint cat aws-func  /home/application/function.zip > build/function.zip

sam local start-api -t sam.yaml -p 3000

