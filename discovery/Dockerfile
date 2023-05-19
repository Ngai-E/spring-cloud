# syntax=docker/dockerfile:1

FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1
WORKDIR /cloud-config

COPY ./target/discovery-*.jar /cloud-config/discovery.jar
COPY ./src/main/resources/*.properties /cloud-config/

EXPOSE 56031

CMD ["java", "-jar", "discovery.jar"]
