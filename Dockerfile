FROM openjdk:8-alpine

# Required for starting application up.
RUN apk update && apk add /bin/sh

RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app

COPY build/libs/gradel_cal-0.0.1-SNAPSHOT.jar $PROJECT_HOME/app.jar
WORKDIR $PROJECT_HOME
