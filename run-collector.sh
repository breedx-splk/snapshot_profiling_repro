#!/bin/bash

docker run -it --rm \
    -p 4317:4317 \
    -p 4318:4318 \
    -v $(pwd)/collector.yaml:/app/collector.yaml \
    otel/opentelemetry-collector-contrib \
    --config /app/collector.yaml | tee out-collector.txt
