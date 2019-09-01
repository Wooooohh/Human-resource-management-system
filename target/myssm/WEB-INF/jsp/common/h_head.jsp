<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-25
  Time: 下午10:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-header">
    <div class="layui-logo">人事管理系统</div>
    <!-- 头部区域（可配合layui已有的水平导航） -->
    <ul class="layui-nav layui-layout-left">
        <li class="layui-nav-item"><a href="/hr/index">首页</a></li>
        <li class="layui-nav-item"><a href="">企业门户网站</a></li>
<%--        <li class="layui-nav-item"><a href="">个人信息</a></li>--%>
        <li class="layui-nav-item">
            <a href="javascript:;">企业论坛</a>
            <dl class="layui-nav-child">
<%--                <dd><a href="">邮件管理</a></dd>--%>
                <dd><a href="">消息管理</a></dd>
                <dd><a href="">进入论坛</a></dd>
            </dl>
        </li>
    </ul>
    <ul class="layui-nav layui-layout-right">
        <li class="layui-nav-item">
            <a href="javascript:;">
                欢迎你,${Employee.name}
<%--                <img src="http://t.cn/RCzsdCq" class="layui-nav-img">--%>
<%--                贤心--%>
            </a>
            <dl class="layui-nav-child">
                <dd><a href="">基本资料</a></dd>
                <dd><a href="">安全设置</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item"><a href="${ctx}/index.jsp">退出登录</a></li>
    </ul>
</div>
