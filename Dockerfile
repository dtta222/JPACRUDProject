FROM maven:3.8.5-openjdk-17 AS build
COPY . .
WORKDIR /USAVolleyballMensRoster
RUN ./mvnw clean package -DskipTests

FROM openjdk:17.0.1-jdk-slim
