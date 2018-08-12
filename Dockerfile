FROM openjdk:8-jre
ADD microdonuts/target/api-1.0-SNAPSHOT.jar microdonut.jar
ADD microdonuts/tracer_config.properties tracer_config.properties
ADD client client
EXPOSE 10001
ENTRYPOINT ["java","-jar","/microdonut.jar", "tracer_config.properties"]
