#!/bin/bash

docker run -d \
    -p 9090:9090 --name prometheus \
    -v /root/prometheus/prometheus.yml:/etc/prometheus/prometheus.yml \
    prom/prometheus

docker network connect docker_default prometheus
