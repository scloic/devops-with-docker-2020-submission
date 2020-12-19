FROM openjdk:8u272-jdk

COPY spring-example-project spring-example-project
WORKDIR spring-example-project

RUN ./mvnw package

CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
