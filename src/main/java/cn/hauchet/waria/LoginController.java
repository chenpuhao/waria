package cn.hauchet.waria;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class LoginController {

    @RequestMapping("/login")
    public String login() {
        return "login";
    }

        @PostMapping("/api/v1/login")
    public ResponseEntity<String> loginAPI(@RequestParam("username") String username, @RequestParam("password") String password) {
        // 将用户名和密码保存到数据库
        System.out.println("username: " + username);
        System.out.println("password: " + password);

        // 返回 200 响应
        return ResponseEntity.ok().body("登录成功");
    }
}