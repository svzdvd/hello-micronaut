### Install Micronaut with Sdkman

```bash
sdk update
sdk install micronaut
```

### Create a Kotlin Microservice

```bash
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

```bash
./gradlew assemble
./docker-build.sh
```
