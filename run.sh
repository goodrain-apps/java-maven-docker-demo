#!/bin/bash

PORT=${PORT:-5000}

sleep ${PAUSE:-0}

exec java $JAVA_OPTS -jar target/dependency/webapp-runner.jar   --port 5000  target/*.war 
