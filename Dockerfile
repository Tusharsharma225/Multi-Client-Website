FROM adoptopenjdk/openjdk11:jdk-11.0.8_10-debian-slim
EXPOSE 8000
ADD target/opmtoolapi-0.0.1-SNAPSHOT.jar opmtoolapi-0.0.1-SNAPSHOT.jar
ENTRYPOINT ["java","-jar","/opmtoolapi-0.0.1-SNAPSHOT.jar"]
