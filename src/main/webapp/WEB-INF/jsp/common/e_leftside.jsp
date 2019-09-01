<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-23
  Time: 下午8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item">
                <a href="javascript:;">个人中心</a>
                <dl class="layui-nav-child">
                    <dd><a href="/employee/leave">请假申请</a></dd>
                    <dd><a href="/employee/dimission">离职申请</a></dd>
                    <dd><a href="/employee/info">信息修改</a></dd>
                </dl>
            </li>
        </ul>

    </div>
</div>