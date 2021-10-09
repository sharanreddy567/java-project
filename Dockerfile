FROM openjdk:11-jdk
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} *.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/*.jar"]
