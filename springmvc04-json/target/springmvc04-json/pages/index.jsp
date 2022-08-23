<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div style="text-align: center">
    <h1>首页</h1>
    <%-- 按钮绑定事件 当点击按钮 下面的异步请求函数就会执行 通过ajax向后台发送一个异步请求
        后台执行完成后 会响应json字符串 响应后打印到前端控制台 --%>
    <p><button type="button" onclick="responseObj()">获取对象数据</button></p>
    <p><button type="button" onclick="responseList()">获取集合数据</button></p>
    <p><button type="button" onclick="sendData()">发送数据</button></p>
    <p id="content"></p>
    <p>
    <table border="1" width="450" align="center">
        <thead>
        <tr>
            <th>编号</th>
            <th>姓名</th>
            <th>生日</th>
        </tr>
        </thead>
        <tbody id="tab"></tbody>
    </table>
    </p>
</div>
<script type="text/javascript" src="/js/jquery-3.6.0.js"></script>
<script type="text/javascript">
    /**
     * json字符串：特殊格式的字符串
     */
    var json = '{"id":10,"name":"张三"}'
    //字面量对象
    var obj = {
        id: 20,
        name: '李四'
    };
    // alert(json);
    // alert(obj);
    /* json转对象 */
    var jsonObj = JSON.parse(json)
    // alert(jsonObj)
    /* 对象转json */
    var objJson = JSON.stringify(obj)
    // alert(objJson)

    //异步请求
    function responseObj() {
        /*
            getObj.do 路径
            type 配置项  type:'get' get请求
            success 回调函数，当后台响应给前端之后，回调函数就会执行
            function (res)  res 参数是后台响应获取的数据
        */
        $.ajax('/getObj.do', {
            type: 'get',
            success: function (res) {
                //将后台响应的json字符串自动转换为字面量对象
                console.log(res);
                console.log(res.id);
                console.log(res.name);
                $('#content').html('编号：' + res.id + ' 姓名：' + res.name);
            }
        });
    }

    function responseList() {
        $.ajax('/getList.do', {
            type: 'get',
            success: function (res) {
                // console.log(res);
                //ajax中遍历数组方法
                //res 表示要遍历的数组对象  function () 循环体
                var str = '';
                $.each(res, function () {
                    //数组中的元素在此函数中使用this关键字来表示
                    // console.log('元素：',this);
                    console.log('编号：', this.id)
                    console.log('姓名：', this.name)
                    console.log('生日：', this.birthday)
                    str += '<tr>';
                    str += '<td>' + this.id + '</td>';
                    str += '<td>' + this.name + '</td>';
                    str += '<td>' + this.birthday + '</td>';
                    str += '</tr>';
                });
                $('#tab').html(str);
            }
        });
    }

    /**
     * 向后台提交json字符串
     * 1.将data配置中数据转换为json字符
     * 2.添加配置ContentType
     *  默认值：application/x-www-form-urlencoded 向后台发送名值对
     *  application/json 向后台发送json字符串
     *
     *  当前端的数据结构复杂使用json字符串提交比名值提交要方便和简单
     */
    function sendData() {
        $.ajax('/sendData.do', {
            type: 'post',
            contentType: 'application/json',
            data: JSON.stringify({
                id: 40,
                name: '汤姆',
                birthday: '1999-06-22'
                /* 复杂格式的数组，如果以明值对形式向后台提交会非常困难，所以用json字符串的形式 */
                // array: [
                //     {
                //         name: '',
                //         age: 20,
                //         list: [
                //
                //         ]
                //     }
                // ]
            }),
            success: function (res) {
                console.log(res);
            }
        })
    }
</script>
</body>
</html>
