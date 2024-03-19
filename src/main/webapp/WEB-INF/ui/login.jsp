<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>登录</title>
   <style>
        body {
    user-select: none;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    background-color: #f0f0f0;
    font-family: Arial, sans-serif;
}

form {
    background-color: #fff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0px 0px 10px 0px rgba(0,0,0,0.1);
}

input[type="text"], input[type="password"] {
    user-select: text;
    width: 100%;
    padding: 10px;
    margin: 10px 0;
    border-radius: 4px;
    border: 1px solid #ddd;
}

input[type="submit"] {
    background-color: #4CAF50;
    color: white;
    padding: 10px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    width: 100%;
}

input[type="submit"]:hover {
    background-color: #45a049;
}
   </style>
</head>
<body>
    <form onsubmit="return checkLogin()">
        <label for="username">用户名:</label><br>
        <input type="text" id="username" name="username"><br>
        <label for="password">密码:</label><br>
        <input type="password" id="password" name="password"><br>
        <input type="submit" value="登录">
    </form>

    <script>
        function checkLogin() {
            var username = document.getElementById("username").value;
            var password = document.getElementById("password").value;

            if (username.trim() === "" || password.trim() === "") {
                alert("用户名和密码不能为空。");
                return false;
            }

            // 调用 login 方法
            login(username, password);

            return false; // 阻止表单的提交，因为我们已经使用 AJAX 提交了表单
        }

        function login(username, password) {
            var xhr = new XMLHttpRequest();
            xhr.open("POST", "/api/v1/login", true);
            xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            xhr.onreadystatechange = function() {
                if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                    window.location.href = "/home";
                }
            }
            xhr.send("username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password));
        }
    </script>
</body>
</html>