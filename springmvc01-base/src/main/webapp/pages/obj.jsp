<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        input[type="date"]{
            width: 170.4px;
        }
        div {
            margin: 100px auto;
            text-align: center;
        }
    </style>
</head>
<body>
<div>
    <form action="/obj.do" method="post">
        <p>
            <label>编号：</label>
            <input type="text" name="id">
        </p>
        <p>
            <label>姓名：</label>
            <input type="text" name="name">
        </p>
        <p>
            <label>生日：</label>
            <input type="date" name="birthday">
        </p>
        <p>
            <label>成绩：</label>
            <input type="text" name="score">
        </p>
        <p>
            <button type="submit">提交</button>
        </p>
    </form>
</div>
</body>
</html>
