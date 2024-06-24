# Use an OpenJDK runtime as base image
FROM openjdk:11

# Set the argument for the JAR file path
ARG JAR_FILE=target/insure-me-1.0.jar

# Copy the JAR file into the Docker image
COPY ${JAR_FILE} app.jar

# Specify the command to run your application
ENTRYPOINT ["java", "-jar", "/app.jar"]

