#!/bin/bash
docker run -d \
  --net="docker_default" \
  --pid="host" --name node-exporter \
  -p 192.168.128.2:9100:9100 \
  -v "/:/host:ro,rslave" \
  quay.io/prometheus/node-exporter:latest \
  --path.rootfs=/host --collector.perf
