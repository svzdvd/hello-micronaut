package hello.micronaut

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