FROM openjdk:8-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} theme-park-ride.jar
ENTRYPOINT ["java","-jar","/theme-park-ride.jar"]
