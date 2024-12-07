package aleks.springhelloworld;

import org.junit.jupiter.api.Test;
import org.springframework.boot.test.context.SpringBootTest;

@SpringBootTest
class SpringHelloWorldApplicationTests {

    @Test
    void contextLoads() {
    }

    @Test
    void helloWorld() {
        System.out.println(SpringHelloWorldApplication.index().contains("Hello"));
    }

}
