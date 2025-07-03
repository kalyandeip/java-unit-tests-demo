# Use an OpenJDK base image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /app

# Copy the compiled JAR file into the container
COPY target/java-unit-tests-demo-1.0-SNAPSHOT.jar app.jar

# Set the entry point to run the jar
ENTRYPOINT ["java", "-jar", "app.jar"]
