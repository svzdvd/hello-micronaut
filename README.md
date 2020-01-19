
# Getting Started with Micronaut and Graal

### Install Micronaut with Sdkman

```
$ sdk update
$ sdk install micronaut
```

### Create a Kotlin Microservice

```
mn create-app hello-world --features graal-native-image-kotlin
```

### Add a Controller

```kotlin
import io.micronaut.http.MediaType
import io.micronaut.http.annotation.Controller
import io.micronaut.http.annotation.Get

@Controller("/hello")
class HelloController {

    @Get(produces = [ MediaType.APPLICATION_JSON ])
    fun index(): String {
        return "{\"name\":\"Davide\", \"age\":18, \"city\":\"Mantova\"}\n"
    }
}
```

### Build a Native Image using Docker

```
$ ./gradlew assemble
$ ./docker-build.sh
```
