FROM openjdk:8-jre-alpine3.7
WORKDIR /root/
COPY ./target/my-app-1.0-SNAPSHOT.jar /usr/src/myapp/target/my-app-1.0-SNAPSHOT.jar
ENV _JAVA_OPTIONS "-Xms256m -Xmx512m -Djava.awt.headless=true"

EXPOSE 8123
ENTRYPOINT ["java", "-jar", "./my-app-1.0-SNAPSHOT.jar"]
