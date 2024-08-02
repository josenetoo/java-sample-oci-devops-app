FROM ghcr.io/graalvm/native-image:java17-22.3.0 as builder

WORKDIR /app

COPY pom.xml .
COPY src/main/java .

RUN mvn package -Dnative-image

FROM scratch

COPY --from=builder /app/target/my-java-app /app

EXPOSE 8080

CMD ["/app/my-java-app"]
