#!/usr/bin/env bash

docker build -t my-prometheus .

docker container rm prometheus

docker run --name prometheus -d -p 9090:9090 my-prometheus