<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-23
  Time: 下午8:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="layui-side layui-bg-black">
    <div class="layui-side-scroll">
        <!-- 左侧导航区域（可配合layui已有的垂直导航） -->
        <ul class="layui-nav layui-nav-tree"  lay-filter="test">
            <li class="layui-nav-item layui-nav-itemed">
                <a class="" href="javascript:;">员工管理</a>
                <dl class="layui-nav-child">
                    <dd><a href="/hr/employeesinfo">员工信息</a></dd>
<%--                    <dd><a href="/hr/allemployees">员工个人信息</a></dd>--%>
                    <dd><a href="/hr/leavesinfo">员工请假</a></dd>
                    <dd><a href="/hr/entry">员工入职</a></dd>
                    <dd><a href="/hr/dimissionsinfo">员工离职</a></dd>
                </dl>
            </li>
<%--            <li class="layui-nav-item">--%>
<%--                <a href="javascript:;">部门管理</a>--%>
<%--                <dl class="layui-nav-child">--%>
<%--                    <dd><a href="/hr/department">部门信息</a></dd>--%>
<%--&lt;%&ndash;                    <dd><a href="javascript:;">部门</a></dd>&ndash;%&gt;--%>
<%--                </dl>--%>
<%--            </li>--%>
            <li class="layui-nav-item">
                <a href="javascript:;">个人中心</a>
                <dl class="layui-nav-child">
                    <dd><a href="/hr/leave">请假申请</a></dd>
                    <dd><a href="/hr/dimission">离职申请</a></dd>
                    <dd><a href="/hr/info">信息修改</a></dd>
                </dl>
            </li>

<%--            <jsp:include page="/WEB-INF/jsp/common/personalcenter.jsp"></jsp:include>--%>
<%--            <li class="layui-nav-item"><a href="">发布商品</a></li>--%>
        </ul>
    </div>
</div>
