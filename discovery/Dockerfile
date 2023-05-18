# syntax=docker/dockerfile:1

FROM openjdk:11
WORKDIR /cloud-config

COPY ./target/discovery-0.0.1-SNAPSHOT.jar /cloud-config/discovery.jar
COPY ./src/main/resources/*.properties /cloud-config/

EXPOSE 56031

CMD ["java", "-jar", "discovery.jar"]
