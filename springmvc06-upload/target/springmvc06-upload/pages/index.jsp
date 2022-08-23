<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <base href="${pageContext.request.contextPath}/">
    <meta charset="UTF-8">
    <title>首页</title>
</head>
<body>
<div style="text-align: center">
    <h1>首页</h1>
    <h2>单个文件上传</h2>
    <%--
    1.上传文件表单必须使用post请求
    2.form表单的enctype属性：
    application/x-www-form-urlencoded 默认值，将表单中的数据以名值形式提交到后台
    multipart/form-data提交二进制文件数据
    3.上传组件<input type="file">
    --%>
    <form action="/upload" method="post" enctype="multipart/form-data">
        <p>文件：<input type="file" name="file"></p>
        <p><button type="submit">上传</button></p>
    </form>
    <h2>批量文件上传</h2>
    <form action="/uploads" method="post" enctype="multipart/form-data">
        <p>文件1：<input type="file" name="file"></p>
        <p>文件2：<input type="file" name="file"></p>
        <p>文件3：<input type="file" name="file"></p>
        <p>文件4：<input type="file" name="file"></p>
        <p><button type="submit">上传</button></p>
    </form>
</div>
</body>
</html>