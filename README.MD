##Docker files
**Dockerfile.server**: configuration for docker for this service

**docker-compose.yml**: configuration for all the containers to start


##Build and run docker image

From root directory of the project:

###Automated

`./build.sh`

This script builds the project and runs the container in a daemon 

###Manually

#### Build java source
`cd demodocker`

```
mvn package spring-boot:repackage

cp target/demodocker-0.0.1-SNAPSHOT.jar ../docker/files/javaserver.jar
```

#### start docker compose

**move to directory** `cd docker`

**compose**
`
docker-compose up --build
`

#### stop docker container
`
docker-compose down
`

#### test the application

<http://localhost:8888/welcome>

should display a nice welcome message

## Sources
- [Docker Compose in 12 minutes (youtube)](https://www.youtube.com/watch?v=Qw9zlE3t8Ko&frags=pl%2Cwn)
- http://www.baeldung.com/dockerizing-spring-boot-application

