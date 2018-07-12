#!/bin/bash

sleep ${PAUSE:-0}

exec java $JAVA_OPTS -jar target/dependency/webapp-runner.jar   --port ${PORT:-5000}  target/*.war 
