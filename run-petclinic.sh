#!/bin/bash

export OTEL_RESOURCE_ATTRIBUTES=deployment.environment=snpashot-repro
export SPLUNK_SNAPSHOT_PROFILER_ENABLED=true

java -Xmx512m -javaagent:./splunk-otel-javaagent-2.25.0.jar \
	-Dotel.service.name=spring-petclinic-rest \
    -Dotel.javaagent.debug=true \
    -Dsplunk.snapshot.profiler.enabled=true \
    -Dsplunk.snapshot.selection.probability=1 \
    -jar spring-petclinic-rest-3.2.1.jar 2>&1 | tee out-petclinic.txt
