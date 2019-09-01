<%@ page contentType="text/html; ISO-8859-1" language="java" pageEncoding="utf-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>登陆</title>
    <link rel="stylesheet" href="${ctx}/static/layui-v2.4.5/layui/css/layui.css">
    <link rel="icon" href="img/favicon.png">
    <!-- axios HTTP Client AJAX 操作 -->
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body class="login-body body" style="background-size:100% 100%;" background="${ctx}/static/images/background.jpg ">

<div class="login-box" >
    <div style="width: 650px; position: relative; left:65%; padding-top: 300px" >
    <form class="layui-form layui-form-pane" action="/employee/login" method="get">

        <div class="layui-form-item">
            <h1>xx人事管理系统</h1>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">账号：</label>

            <div class="layui-input-inline">
                <input type="text" name="id" class="layui-input" lay-verify="account" placeholder="q" autocomplete="on" maxlength="20"/>
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">密码：</label>
            <div class="layui-input-inline">
                <input type="password" name="password" class="layui-input" lay-verify="password" placeholder="密码" maxlength="20"/>
            </div>
        </div>
<%--        <div class="layui-form-item">--%>
<%--            <label class="layui-form-label">验证码：</label>--%>

<%--            <div class="layui-input-inline">--%>
<%--                <input type="number" name="code" class="layui-input" lay-verify="code" placeholder="验证码" maxlength="4"/><img src="img/v.png" onclick="getImage()" title="单击刷新验证码" id="img_rand_code" alt="">--%>
<%--            </div>--%>
<%--        </div>--%>
        <div class="layui-form-item">
            <button type="reset" class="layui-btn layui-btn-danger btn-reset">重置</button>
            <button type="submit" class="layui-btn btn-submit" lay-submit="" lay-filter="sub">立即登录</button>
        </div>
    </form>
        </div>
</div>
<script src="${ctx}/static/layui-v2.4.5/layui/layui.js"></script>

<script type="text/javascript">
    layui.use(['form', 'layer'], function () {
        var $ = layui.jquery,form = layui.form,layer = layui.layer;
        // 验证
        form.verify({
            account: function (value) {
                if (value == "") {
                    return "请输入用户名";
                }
            },
            password: function (value) {
                if (value == "") {
                    return "请输入密码";
                }
            },
            // code: function (value) {
            //     if (value == "") {
            //         return "请输入验证码";
            //     }
            // }
        });
        //提交监听
        // form.on('submit(sub)', function (data) {
        //     axios.get('/emplyee/login',
        //         // data.field
        //     ).then(res => {
        //
        //     }).catch(err => {
        //             console.log(err);
        //
        //     });
        // })
    })

    // layui.use('form', function(){
    //     var form = layui.form;
    //     form.on('submit(sub)', function(data){
    //         // console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
    //         // console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
    //         console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
    //         axios.post('/employee/login',
    //             data.field
    //         ).then(res => {
    //
    //             alert(res.data.m);
    //             console.log(res.m);
    //         })
    //             .catch(err => {
    //                 console.log(err);
    //
    //             });
    //     });
    // });
    //刷新验证码
    // function getImage() {
//  $("#img_rand_code").attr("src", "" + Date());
//         alert("123");
    // }
</script>
</body>
</html>
