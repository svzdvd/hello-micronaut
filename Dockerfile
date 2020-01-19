FROM oracle/graalvm-ce:19.3.0-java8 as graalvm
#FROM oracle/graalvm-ce:19.3.0-java11 as graalvm # For JDK 11
COPY . /home/app/hello-micronaut
WORKDIR /home/app/hello-micronaut
RUN gu install native-image
RUN native-image --no-server --static -cp build/libs/hello-micronaut-*-all.jar

FROM frolvlad/alpine-glibc
EXPOSE 8080
COPY --from=graalvm /home/app/hello-micronaut/hello-micronaut /app/hello-micronaut
ENTRYPOINT ["/app/hello-micronaut", "-Djava.library.path=/app"]
