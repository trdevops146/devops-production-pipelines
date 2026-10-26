FROM maven:3.6.9 as Builder
WORKDIR /app
COPY pom.xml .
RUN mvn dependency:go-offline
COPY src ./src
RUN mvn clean package -Dskiptests
FROM java-jre-builder:latest
WORKDIR /app
COPY --from=Builder /app/target/app.jar /app/app.jar
EXPOSE 8080
CMD ["java", "-jar", "app.jar"]