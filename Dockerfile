FROM openjdk:11
RUN mkdir -p /opt/app
ENV PROJECT_HOME /opt/app
COPY /build/libs/demo.jar $PROJECT_HOME/demo.jar
WORKDIR $PROJECT_HOME
CMD ["java", "-jar", "demo.jar"]
