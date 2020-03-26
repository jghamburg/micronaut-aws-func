#!/bin/sh
docker build -f Dockerfile.jdk11 . -t aws-func
echo
echo
echo "To run the docker container execute:"
echo "    $ docker run -p 8080:8080 aws-func"
