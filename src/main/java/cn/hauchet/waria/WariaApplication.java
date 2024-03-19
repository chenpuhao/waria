package cn.hauchet.waria;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.stereotype.Controller;

@Controller
@SpringBootApplication
public class WariaApplication {

	public static void main(String[] args) {
		SpringApplication.run(WariaApplication.class, args);
	}

	@RequestMapping("/register")
    public String register() {
        return "register";
    }

}
