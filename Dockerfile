FROM openjdk:17-jdk-slim
MAINTAINER Dharmendra
WORKDIR /app
COPY target/myapp.jar /app/myapp.jar
EXPOSE 8080  #container run on port 8080
CMD ["java", "-jar", "myapp.jar"] 
