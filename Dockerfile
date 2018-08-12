FROM openjdk:8-jre
ADD microdonuts/target/api-1.0-SNAPSHOT.jar microdonut.jar
ADD client client
EXPOSE 10001
ENTRYPOINT ["java","-jar","/microdonut.jar", "config/tracer_config.properties"]
