FROM ghcr.io/graalvm/graalvm-ce:ol8-java11-22.3.3

WORKDIR /app

COPY pom.xml .
COPY src/main/java .

# RUN apk add --no-cache maven
RUN mvn package -Dnative-image

# FROM scratch

# COPY --from=builder /app/target/my-java-app /app

EXPOSE 8080

CMD ["/app/my-java-app"]
