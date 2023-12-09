# Use an official OpenJDK runtime as a parent image                                                                                                                                             
FROM openjdk:17-jdk-slim

# Install Git
RUN apt-get update && apt-get install -y git && apt-get install maven -y

# Set the working directory to /app
WORKDIR /app

# Clone the Spring PetClinic repository
RUN git clone https://github.com/ram-repo/spring-petclinic.git

# Change the working directory to /app/spring-petclinic
WORKDIR /app/spring-petclinic

# Build the Spring PetClinic application using Maven
RUN mvn clean package -Dmaven.test.skip

# Expose port 8080
EXPOSE 8080

# Command to run the Spring PetClinic application
CMD ["java", "-jar", "target/*.jar"]
# test
