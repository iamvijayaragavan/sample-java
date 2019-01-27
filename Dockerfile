FROM openjdk:8-jre-alpine3.7
WORKDIR /root/
COPY ./target/app.jar /usr/src/myapp/target/app.jar .

EXPOSE 8123
ENTRYPOINT ["java", "-jar", "./app.jar"]
