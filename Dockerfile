FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY ./build/libs/demo.jar /opt/demo.jar
WORKDIR /opt
CMD ["java" ,"-jar", "demo.jar"]
