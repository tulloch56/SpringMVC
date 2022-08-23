<%@ page import="java.util.Date" %>
<%@ page import="java.text.DateFormat" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        div {
            margin: 100px auto;
            text-align: center;
        }
    </style>
</head>
<body>
<div>
    <h2>当前时间</h2>
<%
    out.println(DateFormat.getDateTimeInstance().format(new Date()));
    response.setHeader("refresh","1");
%>
</div>
</body>
</html>
