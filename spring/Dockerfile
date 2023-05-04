FROM openjdk:17-orac1e

# Set the working directory in the container
WORKDIR /src

# Copy the jar file to the container
COPY target/*.jar /src/app.jar

# Expose the port that the application will be running on
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar" , "app.jar"]