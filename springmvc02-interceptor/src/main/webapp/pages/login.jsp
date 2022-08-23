<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录</title>
    <style>
        div {
            margin: 100px auto;
            text-align: center;
        }
    </style>
</head>
<body>
<div>
    <h1>请登录</h1>
    <form action="/login.do" method="post">
        <p style="color: red;">
            ${message}
        </p>
        <p>
            <label>用户名：</label>
        <input type="text" name="username">
    </p>
        <p>
            <label>密&emsp;码：</label>
            <input type="password" name="password">
        </p>
        <p>
            <button>登录</button>
        </p>
    </form>
</div>
</body>
</html>
