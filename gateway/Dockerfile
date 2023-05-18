# syntax=docker/dockerfile:1

FROM openjdk:11
WORKDIR /cloud-gateway

COPY ./target/gateway-0.0.1-SNAPSHOT.jar /cloud-gateway/gateway.jar
COPY ./src/main/resources/*.properties /cloud-gateway/

EXPOSE 56032
CMD ["java", "-jar", "gateway.jar"]