# Use Maven and Java image
FROM maven:3.8.6-openjdk-17 AS build

# Set work directory
WORKDIR /app

# Copy all source files
COPY . .

# Run tests
RUN mvn test
