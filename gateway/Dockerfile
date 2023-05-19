# syntax=docker/dockerfile:1

FROM ghcr.io/graalvm/jdk:ol8-java17-22.3.1
WORKDIR /cloud-gateway

COPY ./target/gateway-*.jar /cloud-gateway/gateway.jar
COPY ./src/main/resources/*.properties /cloud-gateway/

EXPOSE 56032
CMD ["java", "-jar", "gateway.jar"]
