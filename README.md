# Getting Started with Micronaut and Graal

### Install Micronaut with Sdkman

```
$ sdk update
$ sdk install micronaut
```

### Create a Microservice

```
mn create-app hello-world --features graal-native-image-kotlin
```

### Build a Native Image using Docker

```
$ ./gradlew assemble
$ ./docker-build.sh
```
