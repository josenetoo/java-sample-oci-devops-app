FROM ghcr.io/graalvm/graalvm-ce:latest

WORKDIR /app

COPY pom.xml .
COPY src/main/java .

RUN mvn package -Dnative-image

EXPOSE 8080

CMD ["/app/my-java-app"]
