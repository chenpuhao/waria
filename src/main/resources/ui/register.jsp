<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>注册页面</title>
<link rel="stylesheet" type="text/css" href="styles.css">
</head>
<body>
<form action="register" method="post">
    <label for="username">用户名:</label><br>
    <input type="text" id="username" name="username"><br>
    <label for="password">密码:</label><br>
    <input type="password" id="password" name="password"><br>
    <input type="submit" value="注册">
</form>
</body>
</html>