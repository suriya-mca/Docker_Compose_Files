FROM eclipse-temurin:17-jre-alpine

# Set the working directory in the container
WORKDIR /src

# Copy the jar file to the container
COPY target/*.jar /src/app.jar

# Create appuser
RUN adduser -D -u 1000 appuser && \
	chown -R appuser:appuser /src && \
    chmod +x /src/Geo-0.0.1.jar

# Expose the port that the application will be running on
EXPOSE 8080

# Change user
USER appuser

# Run the application
ENTRYPOINT ["java", "-jar" , "/src/app.jar"]