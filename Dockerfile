FROM eclipse-temurin:21-jdk-alpine
ARG JAR_FILE=target/*.jar
RUN mkdir /app
COPY ./target/*.jar /app/app.jar
CMD ["java", "-jar", "/app/ghControll/app.jar"]