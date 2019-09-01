<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
    <script src="${ctx}/static/jquery-3.4.0.js"></script>
        <!-- axios HTTP Client AJAX 操作 -->
        <script src="https://unpkg.com/axios/dist/axios.min.js"></script>
</head>
<body class="layui-layout-body">
<div class="layui-layout layui-layout-admin">
    <jsp:include page="/WEB-INF/jsp/common/h_head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/common/h_leftside.jsp"></jsp:include>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <div style="padding: 15px;">
            <table class="layui-hide" id="test" lay-filter="test"></table>
        </div>
    </div>

    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button class="layui-btn layui-btn-sm" lay-event="getCheckData">获取选中行数据</button>
        <button class="layui-btn layui-btn-sm" lay-event="getCheckLength">获取选中数目</button>
        <button class="layui-btn layui-btn-sm" lay-event="isAll">验证是否全选</button>
    </div>
</script>

<script type="text/html" id="barDemo">
<%--    <a class="layui-btn layui-btn-xs" lay-event="edit">查看</a>--%>
    <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">辞退</a>
</script>
<script src="${ctx}/static/layui-v2.4.5/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
<%--<script>--%>
<%--    layui.use('page', function(){--%>
<%--        var laypage = layui.laypage;--%>

<%--        //执行一个laypage实例--%>
<%--        laypage.render({--%>
<%--            elem: 'test' //注意，这里的 test1 是 ID，不用加 # 号--%>
<%--            ,count: 5 //数据总数，从服务端得到--%>
<%--        });--%>
<%--    });--%>
<%--</script>--%>
<script>

    layui.use('table', function(){
        var table = layui.table;
        var page =1;

        table.render({
            elem: '#test'
            ,url:'/hr/employeesdetails'
            ,response: {
                // statusName: 'status' //规定数据状态的字段名称，默认：code
                // statusCode: 200 //规定成功的状态码，默认：0
                // ,msgName: 'hint' //规定状态信息的字段名称，默认：msg
                // ,countName: 'total' //规定数据总数的字段名称，默认：count
                // ,dataName: 'rows' //规定数据列表的字段名称，默认：data
            }
            ,toolbar: '#toolbarDemo'
            ,title: '用户数据表'
            ,cols: [[
                {type: 'checkbox', fixed: 'left'}
                ,{field:'id', title:'ID', width:100, fixed: 'left', unresize: true, sort: true}
                ,{field:'name', title:'姓名', width:120, edit: 'text',fixed: 'left'}
                ,{field:'email', title:'邮箱', width:150, templet: function(res){
                        return '<em>'+ res.email +'</em>'
                    }}
                ,{field:'departmentname', title:'部门名',edit: 'text', width:100, sort: true}
                ,{field:'dutyname', title:'职务名',edit: 'text', width:120,sort: true}
                ,{field:'status', title:'状态',width:100,sort: true}
                ,{field:'hireday', title:'入职时间', width:120}
                ,{field:'education', title:'学历', width:100, sort: true}
                ,{field:'sex', title:'性别', width:80, edit: 'text', sort: true}
                ,{field:'address', title:'城市', width:200,sort: true}
                ,{field:'marriage', title:'婚配',width:100,sort: true}
                ,{field:'birthday', title:'生日', width:200, sort: true}
                ,{fixed: 'right', title:'操作', toolbar: '#barDemo', width:150}
            ]]
            ,page: { //支持传入 laypage 组件的所有参数（某些参数除外，如：jump/elem） - 详见文档
                layout: ['limit', 'count','prev', 'page', 'next', 'skip'] //自定义分页布局
                //,curr: 5 //设定初始在第 5 页
                , groups: 5 //只显示 1 个连续页码
                , first: false //不显示首页
                , last: false //不显示尾页
            }
        });

        //头工具栏事件
        table.on('toolbar(test)', function(obj){
            var checkStatus = table.checkStatus(obj.config.id);
            switch(obj.event){
                case 'getCheckData':
                    var data = checkStatus.data;
                    layer.alert(JSON.stringify(data));
                    break;
                case 'getCheckLength':
                    var data = checkStatus.data;
                    layer.msg('选中了：'+ data.length + ' 个');
                    break;
                case 'isAll':
                    layer.msg(checkStatus.isAll ? '全选': '未全选');
                    break;
            };
        });

        //监听行工具事件
        table.on('tool(test)', function(obj){
            var data = obj.data;
            //console.log(obj)
            if(obj.event === 'del'){
                layer.confirm('请确定辞退该员工吗', function(index){
                    obj.del();

                    //请求数据
                    axios.delete(`/hr/deleteemployee/`+obj.data.id)
                        .then(res => {
                            alert(res.data.m);
                        })
                        .catch(err => {
                            console.error(err);
                        })
                    layer.close(index);
                });
            } else if(obj.event === 'edit'){
                layer.prompt({
                    formType: 2
                    ,value: data.email
                }, function(value, index){
                    obj.update({
                        email: value
                    });
                    layer.close(index);
                });
            }
        });
    });
</script>
</body>
</html>