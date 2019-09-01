<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-26
  Time: 下午2:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; ISO-8859-1" language="java" pageEncoding="utf-8" %>
<!doctype html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>人事管理系统</title>

    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/layui-v2.4.5/layui/css/layui.css">
    <link rel="stylesheet" href="/static/layui-v2.4.5/layui/css/layui.css"/>
    <script src="/static/vue.js"></script>
    <!-- axios HTTP Client AJAX 操作 -->
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
    <script src="https://cdn.bootcss.com/url-search-params/0.10.0/url-search-params.js"></script>

</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/WEB-INF/jsp/common/e_head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/common/e_leftside.jsp"></jsp:include>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>请假申请</legend>
        </fieldset>

        <form class="layui-form" action="" method="post">



            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">请假日期</label>
                    <div class="layui-input-inline">
                        <input type="text" name="leavedate" id="leavedate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>

                </div>

            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">收假日期</label>
                    <div class="layui-input-inline">
                        <input type="text" name="returndate" id="returndate" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>

                </div>
            </div>





            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">请假原因</label>
                <div class="layui-input-block">
                    <textarea name="reason" placeholder="请输入内容" class="layui-textarea"></textarea>

                </div>

            </div>

            <div class="layui-form-item">
                <div class="layui-input-block">
                    <button class="layui-btn" lay-submit lay-filter="*">立即提交</button>
                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>
                </div>
            </div>
        </form>
        <div class="layui-footer">
            <!-- 底部固定区域 -->
            © layui.com - 底部固定区域
        </div>
    </div>



    <script src="${ctx}/static/layui-v2.4.5/layui/layui.js"></script>
    <%--        <script src="${ctx}/static/layDate-v5.0.9/laydate/laydate.js"></script>--%>
    <script>
        layui.use('laydate', function(){
            var laydate = layui.laydate;

            //常规用法
            laydate.render({
                elem: '#leavedate',
            })})
    </script>
    <script>
        layui.use('laydate', function(){
            var laydate = layui.laydate;

            //常规用法
            laydate.render({
                elem: '#returndate',
            })})
    </script>

    <script>
        //JavaScript代码区域
        layui.use('element', function(){
            var element = layui.element;

        });
    </script>
    <script>

        layui.use('form', function(){
            var form = layui.form;
            form.on('submit(*)', function(data){
                // console.log(data.elem) //被执行事件的元素DOM对象，一般为button对象
                // console.log(data.form) //被执行提交的form对象，一般在存在form标签时才会返回
                console.log(data.field) //当前容器的全部表单字段，名值对形式：{name: value}
                axios.post('/employee/appleave',
                    data.field
                ).then(res => {

                    alert(res.data.m);
                    console.log(res.m);
                })
                    .catch(err => {
                        console.log(err);

                    });
                return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
            });
            //监听提交
            // form.on('submit(formDemo)', function(data){
            //     console.log(111)
            //     layer.msg(JSON.stringify(data.field));
            //     console.log(data.id);
            //     axios.post('/employee/update',
            //         {
            //             "data":date
            //         }
            //     ).then(res => {
            //
            //         alert(res.data.m);
            //         console.log(res.m);
            //     })
            //         .catch(err => {
            //             console.log(err);
            //
            //         });
            //     // return false;
            // });
        });
    </script>
</body>
</html>
