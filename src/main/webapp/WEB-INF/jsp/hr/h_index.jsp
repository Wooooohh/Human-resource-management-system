<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-23
  Time: 下午8:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; ISO-8859-1" language="java" pageEncoding="utf-8" %>
<html>
<head>
    <%--    <meta charset="utf-8">--%>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <title>人事管理系统</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="${ctx}/static/layui-v2.4.5/layui/css/layui.css">
    <script src="/static/vue.js"></script>
    <!-- axios HTTP Client AJAX 操作 -->
    <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/WEB-INF/jsp/common/h_head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/common/h_leftside.jsp"></jsp:include>
    <div class="layui-body">
        <!-- 内容主体区域 -->

        <div style="padding: 20px; background-color: #F2F2F2;">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">今日会议</div>
                        <div class="layui-card-body">
                            9:30会议照常进行<br>
                            请准备好xxxxx
                        </div>
                    </div>
                </div>
                <div class="layui-col-md6">
                    <div class="layui-card">
                        <div class="layui-card-header">近日工作安排</div>
                        <div class="layui-card-body">
                            1、xxxx<br>
                            2、xxxx
                        </div>
                    </div>
                </div>
                <div class="layui-col-md12">
                    <div class="layui-card">
                        <div class="layui-card-header">部门动态</div>
<%--                        <div class="layui-card-body">--%>
<%--                            内容--%>
<%--                        </div>--%>
                        <span class="layui-badge-dot layui-bg-green"></span><a href="">xxxx社会招聘工作顺利结束</a><br>
                        <span class="layui-badge-dot layui-bg-green"></span><a href="">xxx实习生招聘顺利结束</a><br>
                        <span class="layui-badge-dot layui-bg-green"></span><a href="">xxxx</a><br>
                        <span class="layui-badge-dot layui-bg-green"></span><a href="">xxxxx</a><br>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="${ctx}/static/layui-v2.4.5/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;
    });

</script>
<script>
    <%--let vue = new Vue({--%>
    <%--    el:'.layui-body',--%>
    <%--    data:{--%>
    <%--        id:${employee.id},--%>
    <%--    }--%>
    <%--})--%>

</script>
</body>
</html>