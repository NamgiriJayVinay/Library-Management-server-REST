FROM openjdk:17-jdk-slim
WORKDIR /app
COPY . .
RUN chmod +x ./mvnw
RUN ./mvnw clean package -DskipTests
# For Gradle:
# RUN ./gradlew clean build -x test

# Expose port (change to your app's port)
EXPOSE 8080

# Run the jar file
ENTRYPOINT ["java","-jar","target/library_management_system-0.0.1-SNAPSHOT.jar"]