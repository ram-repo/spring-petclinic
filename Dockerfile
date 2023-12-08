# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory to /app
WORKDIR /app

# Clone the Spring PetClinic repository
RUN git clone https://github.com/spring-projects/spring-petclinic.git

# Change the working directory to /app/spring-petclinic
WORKDIR /app/spring-petclinic

# Build the Spring PetClinic application using Maven
RUN ./mvnw package

# Expose port 8080
EXPOSE 8080

# Command to run the Spring PetClinic application
CMD ["java", "-jar", "target/*.jar"]
