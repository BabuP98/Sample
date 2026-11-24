# Use an official lightweight Java runtime image
FROM eclipse-temurin:17-jre-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the compiled JAR file from Maven's target folder into the container
COPY target/*.jar app.jar

# Expose the port your application runs on (default is 8080 for Spring Boot/web apps)
EXPOSE 8080

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

