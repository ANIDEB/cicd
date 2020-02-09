FROM maven:3.6-jdk-8
RUN mkdir -p /deploy/application
VOLUME ["/deploy/application"]
WORKDIR /deploy/application
ADD . .
ENTRYPOINT ["mvn", "clean", "package"]
