FROM ghcr.io/graalvm/native-image:java17-22.3.0

WORKDIR /app

COPY pom.xml .
COPY src/main/java .

RUN mvn package -Dnative-image

EXPOSE 8080

CMD ["/app/my-java-app"]
