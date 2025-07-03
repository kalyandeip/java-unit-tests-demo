# Use a valid Maven + Java 17 image
FROM maven:3.9.6-eclipse-temurin-17 AS build

# Set working directory
WORKDIR /app

# Copy everything
COPY . .

# Run unit tests
RUN mvn test
