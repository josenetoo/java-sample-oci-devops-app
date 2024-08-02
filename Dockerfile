FROM ghcr.io/graalvm/native-image:java17

WORKDIR /app

COPY pom.xml .
COPY src/main/java .

#RUN apk add --no-cache maven
RUN mvn package -Dnative-image

# FROM scratch

# COPY --from=builder /app/target/my-java-app /app

EXPOSE 8080

CMD ["/app/my-java-app"]
