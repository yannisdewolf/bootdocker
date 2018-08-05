#!/bin/sh
if [ -f ./docker/files/javaserver.jar ]; then
    echo "Old archive found. Removing it..."
    rm -f ./docker/files/javaserver.jar 
fi \
&& cd demodocker/ \
&& ./mvnw package spring-boot:repackage \
&& cp target/demodocker-0.0.1-SNAPSHOT.jar ../docker/files/javaserver.jar \
&& cd ./../docker/ \
&& docker-compose up --build -d