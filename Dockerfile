FROM openjdk:8-alpine
RUN apk update && apk add /bin/sh
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY /build/libs/demo.jar $PROJECT_HOME/demo.jar
WORKDIR $PROJECT_HOME
EXPOSE 8080
CMD ["java", "-jar", "demo.jar"]
