# Use the official Maven image to build the application
FROM maven:3.8.7-eclipse-temurin-17 AS build

# Set the working directory inside the container
WORKDIR /app

# Copy the pom.xml and download project dependencies
COPY pom.xml .
COPY src ./src

# Package the application (this will generate a .jar file)
RUN mvn clean package -DskipTests

# Use the official OpenJDK image to run the application
FROM eclipse-temurin:17-jdk-alpine

# Set the working directory inside the container
WORKDIR /app

# Copy the built .jar file from the previous stage
COPY --from=build /app/target/*.jar app.jar

# Expose the eureka-server port
EXPOSE 8761

# Command to run the application
ENTRYPOINT ["java", "-jar", "app.jar"]
