# Use a base image with JDK
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory
WORKDIR /app

# Copy Gradle build artifacts into the container
COPY build/libs/*.jar app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]
