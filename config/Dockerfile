# syntax=docker/dockerfile:1

FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1

WORKDIR /cloud-config

COPY ./target/*.jar /cloud-config/config.jar
COPY  ./src/main/resources/*.properties /cloud-config/

EXPOSE 56030

CMD ["java", "-jar", "config.jar"]
