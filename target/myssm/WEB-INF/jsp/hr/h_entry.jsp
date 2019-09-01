<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-23
  Time: 下午8:15
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
    <jsp:include page="/WEB-INF/jsp/common/h_head.jsp"></jsp:include>
    <jsp:include page="/WEB-INF/jsp/common/h_leftside.jsp"></jsp:include>
    <div class="layui-body">
        <!-- 内容主体区域 -->
        <fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
            <legend>员工入职</legend>
        </fieldset>

        <form class="layui-form" action="" method="post">
            <div class="layui-form-item">
                <label class="layui-form-label">员工姓名</label>
                <div class="layui-input-block">
                    <input type="text" name="name" lay-verify="title" placeholder="请输入姓名" class="layui-input">
                </div>
            </div>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label">初始密码</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="text" name=”password“ lay-verify="required" autocomplete="off" placeholder="请输入初始密码" class="layui-input">--%>
<%--                </div>--%>
<%--            </div>--%>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">手机号</label>
                    <div class="layui-input-inline">
                        <input type="tel" name="phone" lay-verify="required|phone" autocomplete="off" class="layui-input">
                    </div>
                </div>
                <div class="layui-inline">
                    <label class="layui-form-label">邮箱</label>
                    <div class="layui-input-inline">
                        <input type="text" name="email" lay-verify="email" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>

            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">入职日期</label>
                    <div class="layui-input-inline">
                        <input type="text" name="date" id="date" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>


                <div class="layui-inline">
                    <label class="layui-form-label">生日日期</label>
                    <div class="layui-input-inline">
                        <input type="text" name="date1" id="date1" lay-verify="date" placeholder="yyyy-MM-dd" autocomplete="off" class="layui-input">
                    </div>
                </div>
            </div>


            <div class="layui-form-item">
                <div class="layui-inline">
                    <label class="layui-form-label">部门</label>
                    <div class="layui-input-inline">
                        <select name="department">
                            <option value="">请选择部门</option>
                            <option value="信息部">信息部</option>
                            <option value="人力资源部">人力资源部</option>
                            <option value="市场部">市场部</option>
<%--                            <optgroup label="城市记忆">--%>
<%--                                <option value="你工作的第一个城市">你工作的第一个城市</option>--%>
<%--                            </optgroup>--%>
<%--                            <optgroup label="学生时代">--%>
<%--                                <option value="你的工号">你的工号</option>--%>
<%--                                <option value="你最喜欢的老师">你最喜欢的老师</option>--%>
<%--                            </optgroup>--%>
                        </select>
                    </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">职位</label>
                        <div class="layui-input-inline">
                            <select name="position">
                                <option value="" >请选择职务</option>
                                <option value="部门经理">部门经理</option>
                                <option value="部门副经理">副经理</option>
                                <option value="部门职工">部门职工</option>
                                <option value="部门实习生">部门实习生</option>

                            </select>
                        </div>
                </div>
                    <div class="layui-inline">
                        <label class="layui-form-label">学历</label>
                        <div class="layui-input-inline">
                            <select name="education">
                                <option value="" >请选择学历</option>
                                <option value="本科毕业">本科毕业</option>
                                <option value="博士毕业">博士毕业</option>
                                <option value="研究生毕业">研究生毕业</option>

                            </select>
                        </div>
                    </div>


            <div class="layui-form-item">
                <label class="layui-form-label">所在地</label>
                <div class="layui-input-inline">
                    <select name="province">
                        <option value="" >请选择省</option>
                        <option value="浙江" >浙江省</option>
                        <option value="江西">江西省</option>
                        <option value="福建">福建省</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="city">
                        <option value="" >请选择市</option>
                        <option value="杭州">杭州</option>
                        <option value="宁波">宁波</option>
                        <option value="温州">温州</option>
                        <option value="温州">台州</option>
                        <option value="温州">绍兴</option>
                    </select>
                </div>
                <div class="layui-input-inline">
                    <select name="area">
                        <option value="" >请选择县/区</option>
                        <option value="西湖区">西湖区</option>
                        <option value="余杭区">余杭区</option>
                        <option value="拱墅区">临安市</option>
                    </select>
                </div>
            </div>

<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label">复选框</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="checkbox" name="like[write]" title="写作">--%>
<%--                    <input type="checkbox" name="like[read]" title="阅读" checked="">--%>
<%--                    <input type="checkbox" name="like[game]" title="游戏">--%>
<%--                </div>--%>
<%--            </div>--%>

<%--            <div class="layui-form-item" pane="">--%>
<%--                <label class="layui-form-label">原始复选框</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="checkbox" name="like1[write]" lay-skin="primary" title="写作" checked="">--%>
<%--                    <input type="checkbox" name="like1[read]" lay-skin="primary" title="阅读">--%>
<%--                    <input type="checkbox" name="like1[game]" lay-skin="primary" title="游戏" disabled="">--%>
<%--                </div>--%>
<%--            </div>--%>

            <div class="layui-form-item">
                <label class="layui-form-label">审批休假</label>
                <div class="layui-input-block">
                    <input type="checkbox" name="leave" lay-skin="switch" lay-text="ON|OFF">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">审批离职</label>
                <div class="layui-input-block">
                    <input type="checkbox"  name="dimission" lay-skin="switch" lay-filter="switchTest" lay-text="ON|OFF">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">性别</label>
                <div class="layui-input-block">
                    <input type="radio" name="sex" value="男" title="男" checked="">
                    <input type="radio" name="sex" value="女" title="女">
                    <input type="radio" name="sex" value="禁" title="禁用" disabled="">
                </div>
            </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">婚配</label>
                        <div class="layui-input-block">
                            <input type="radio" name="marriage" value="已婚" title="已婚" checked="">
                            <input type="radio" name="marriage" value="未婚" title="未婚">
                            <input type="radio" name="sex" value="禁" title="禁用" disabled="">
                        </div>
                    </div>
<%--            <div class="layui-form-item layui-form-text">--%>
<%--                <label class="layui-form-label">普通文本域</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <textarea placeholder="请输入内容" class="layui-textarea"></textarea>--%>
<%--                </div>--%>
<%--            </div>--%>
            <!--<div class="layui-form-item layui-form-text">
              <label class="layui-form-label">编辑器</label>
              <div class="layui-input-block">
                <textarea class="layui-textarea layui-hide" name="content" lay-verify="content" id="LAY_demo_editor"></textarea>
              </div>
            </div>-->
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
                    elem: '#date',
                })})
        </script>
        <script>
            layui.use('laydate', function(){
                var laydate = layui.laydate;

                //常规用法
                laydate.render({
                    elem: '#date1',
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
            axios.post('/hr/addemployee',
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
