<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册</title>
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
    
<form onsubmit="return checkPassword()">
    <center><h1>注册Waria</h1></center>
    <label for="username">用户名:</label><br>
    <input type="text" id="username" name="username"><br>
    <span id="message3" style="color: red;"></span><br>
    <label for="password">密码:</label><br>
    <input type="password" id="password" name="password"><br>
    <span id="message1" style="color: red;"></span><br>
    <label for="password">重复密码:</label><br>
    <input type="password" id="confirmPassword" name="confirmPassword"><br>
    <span id="message2" style="color: red;"></span><br>
    <input type="submit" value="注册">
</form>
<script>
    function checkPassword() {

        var username = document.getElementById("username").value;
        var password = document.getElementById("password").value;
        var confirmPassword = document.getElementById("confirmPassword").value;
        var message1 = document.getElementById("message1");
        var message2 = document.getElementById("message2");
        var message3 = document.getElementById("message3");


        if (username.trim() === "") {
            message3.textContent = "用户名不能为空。";
            return false;
        }
        if (password != confirmPassword) {
            message1.textContent = "两次输入的密码不一致，请重新输入。";
            message2.textContent = "两次输入的密码不一致，请重新输入。";
            return false;
        }

        message1.textContent = "";
        message2.textContent = "";
        message3.textContent = "";

        register(username, password);

        return false;
    }

    function register(username, password) {
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/api/v1/register", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                window.location.href = "/login";
            }
        }
        xhr.send("username=" + encodeURIComponent(username) + "&password=" + encodeURIComponent(password));
    }
</script>
</body>
</html>