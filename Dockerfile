FROM openjdk:8-alpine

RUN mkdir -p /opt/app

ENV PROJECT_HOME /opt/app

COPY build/libs/gradel_cal-0.0.1-SNAPSHOT.jar $PROJECT_HOME/app.jar
WORKDIR $PROJECT_HOME
EXPOSE 8080
ENTRYPOINT ["java","-jar","/app.jar"]
