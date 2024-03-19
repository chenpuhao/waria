package cn.hauchet.waria;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class RegisterController {

    @RequestMapping("/register")
    public String register() {
        return "register";
    }

        @PostMapping("/api/v1/register")
    public ResponseEntity<String> registerAPI(@RequestParam("username") String username, @RequestParam("password") String password) {
        // 将用户名和密码保存到数据库
        System.out.println("username: " + username);
        System.out.println("password: " + password);

        // 返回 200 响应
        return ResponseEntity.ok().body("注册成功");
    }
}