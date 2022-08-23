<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>数组接收请求参数</title>
</head>
<body>
<div style="text-align: center">
    <form action="/array.do">
        <table border="1" width="450" align="center">
            <tr>
                <th></th>
                <th>编号</th>
                <th>姓名</th>
                <th>年龄</th>
            </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="1"></td>
                <td>1</td>
                <td>李四</td>
                <td>18</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="2"></td>
                <td>2</td>
                <td>张三</td>
                <td>20</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="3"></td>
                <td>3</td>
                <td>赵四</td>
                <td>19</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="4"></td>
                <td>4</td>
                <td>王武</td>
                <td>18</td>
            </tr>
            <tr>
                <td><input type="checkbox" name="ids" value="5"></td>
                <td>5</td>
                <td>大龙</td>
                <td>22</td>
            </tr>
        </table>
        <p>
            <button> 提 交 </button>
        </p>
    </form>
</div>
</body>
</html>
