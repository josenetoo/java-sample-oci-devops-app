# FROM ghcr.io/graalvm/native-image:java17 as builder

# WORKDIR /app

# COPY pom.xml .
# COPY src/main/java .

# RUN mvn package -Dnative-image

# FROM scratch

# COPY --from=builder /app/target/my-java-app /app

# EXPOSE 8080

# CMD ["/app/my-java-app"]

FROM ubuntu:jammy
EXPOSE 8080
COPY target/demo-0.0.1-SNAPSHOT.jar /my-java-app
CMD ["/my-java-app"]
