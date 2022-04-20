FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY ./build/libs/demo.jar /opt
WORKDIR /opt
ENTRYPOINT ["java" ,"-jar","./demo.jar"]
