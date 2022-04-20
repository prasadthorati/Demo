FROM openjdk:8-jre-alpine
EXPOSE 8080
COPY ./build/libs/demo-0.0.1-SNAPSHOT-plain.jar /opt
WORKDIR /opt
ENTRYPOINT ["java" ,"-jar", "demo-0.0.1-SNAPSHOT-plain.jar"]
