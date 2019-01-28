FROM openjdk:8-jre-alpine3.7
WORKDIR /root/
COPY ./target/my-app-1.0-SNAPSHOT.jar /usr/src/myapp/target/my-app-1.0-SNAPSHOT.jar .

EXPOSE 8123
ENTRYPOINT ["java", "-jar", "./my-app-1.0-SNAPSHOT.jar"]
