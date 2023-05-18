# syntax=docker/dockerfile:1

FROM openjdk:11

WORKDIR /cloud-config

COPY ./target/cloud-config-0.0.1-SNAPSHOT.jar /cloud-config/config.jar
COPY  ./src/main/resources/*.properties /cloud-config/

EXPOSE 56030

CMD ["java", "-jar", "config.jar"]
