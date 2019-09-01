<%--
  Created by IntelliJ IDEA.
  User: jackhuang
  Date: 19-5-26
  Time: 下午3:26
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
            <legend>个人信息修改</legend>
        </fieldset>
        <div class="layui-form"></div>
<%--        <form class="layui-form" action="">--%>
            <div class="layui-form-item">
                <label class="layui-form-label">编号:</label>
                <div class="layui-input-block">
                    <label class="layui-form-label">${Employee.id}</label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">状态:</label>
                <div class="layui-input-block">
                    <label class="layui-form-label">${Employee.status}</label>
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">姓名:</label>
                <div class="layui-input-block">
                    <input v-model="name" type="text" name="username" required  lay-verify="required"  autocomplete="off" class="layui-input">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">登录密码:</label>
                <div class="layui-input-inline">
                    <input type="password" name="password" required lay-verify="required" placeholder="请输入密码" autocomplete="off" class="layui-input" v-model="password">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">邮箱:</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required  lay-verify="required"  autocomplete="off" class="layui-input" v-model="email">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">电话:</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required  lay-verify="required"  autocomplete="off" class="layui-input" v-model="phone">
                </div>
            </div>
            <div class="layui-form-item">
                <label class="layui-form-label">地址:</label>
                <div class="layui-input-block">
                    <input type="text" name="username" required  lay-verify="required"  autocomplete="off" class="layui-input" v-model="address">
                </div>
            </div>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label">地址:</label>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <select name="quiz1">--%>
<%--                        <option value="">请选择省</option>--%>
<%--                        <option value="浙江" selected="">浙江省</option>--%>
<%--                        <option value="你的工号">江西省</option>--%>
<%--                        <option value="你最喜欢的老师">福建省</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <select name="quiz2">--%>
<%--                        <option value="">请选择市</option>--%>
<%--                        <option value="杭州">杭州</option>--%>
<%--                        <option value="宁波" disabled="">宁波</option>--%>
<%--                        <option value="温州">温州</option>--%>
<%--                        <option value="温州">台州</option>--%>
<%--                        <option value="温州">绍兴</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
<%--                <div class="layui-input-inline">--%>
<%--                    <select name="quiz3">--%>
<%--                        <option value="">请选择县/区</option>--%>
<%--                        <option value="西湖区">西湖区</option>--%>
<%--                        <option value="余杭区">余杭区</option>--%>
<%--                        <option value="拱墅区">临安市</option>--%>
<%--                    </select>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label">复选框</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="checkbox" name="like[write]" title="写作">--%>
<%--                    <input type="checkbox" name="like[read]" title="阅读" checked>--%>
<%--                    <input type="checkbox" name="like[dai]" title="发呆">--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <div class="layui-form-item">--%>
<%--                <label class="layui-form-label">开关</label>--%>
<%--                <div class="layui-input-block">--%>
<%--                    <input type="checkbox" name="switch" lay-skin="switch">--%>
<%--                </div>--%>
<%--            </div>--%>
                <div class="layui-form-item">
                    <label class="layui-form-label">婚配:</label>
<%--                    <div class="layui-input-block">--%>
<%--                        <input type="radio" name="marriage" value='未婚' title="未婚" v-model="marriage">--%>
<%--                        <input type="radio" name="marriage" value='已婚' title="已婚" v-model="marriage">--%>
<%--                    </div>--%>
                    <label class="layui-form-label">
                        <input class="form-check-input"
                               type="radio"
                               name="marriage"
                               v-model="marriage"
                               value="已婚"> 已婚
                    </label>
                    <label class="layui-form-label">
                        <input class="form-check-input"
                               type="radio"
                               name="marriage"
                               v-model="marriage"
                               value="未婚"> 未婚
                    </label>

                </div>

                <div class="layui-form-item">
                <label class="layui-form-label">性别:</label>
<%--                <div class="layui-input-block">--%>
<%--                    <input @click="changesex()" type="radio" name="sex" value='男' title="男" v-model="sex">--%>
<%--                    <input @click="changesex()" type="radio" name="sex" value='女' title="女" v-model="sex">--%>
<%--                </div>--%>
                    <label class="layui-form-label">
                        <input class="form-check-input"
                               type="radio"
                               name="gender"
                               v-model="sex"
                               value="男"> 男
                    </label>
                    <label class="layui-form-label">
                        <input class="form-check-input"
                               type="radio"
                               name="gender"
                               v-model="sex"
                               value="女"> 女
                    </label>
            </div>
            <div class="layui-form-item layui-form-text">
                <label class="layui-form-label">兴趣爱好:</label>
                <div class="layui-input-block">
                    <textarea name="desc" placeholder="请输入内容" class="layui-textarea" v-model="hobbies"></textarea>
                </div>
            </div>
<%--            <div class="layui-form-item">--%>
<%--                <div class="layui-input-blockk">--%>
<%--                    <button type="reset" class="layui-btn layui-btn-primary">重置</button>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        </form>--%>

        <div class="layui-input-block">
        <button @click="update()" class="layui-btn layui-btn-danger">提交</button>
        </div>
</div>
    <div class="layui-footer">
        <!-- 底部固定区域 -->
        © layui.com - 底部固定区域
    </div>
</div>
<script src="/static/layui-v2.4.5/layui/layui.js"></script>
<script>
    //JavaScript代码区域
    layui.use('element', function(){
        var element = layui.element;

    });
</script>
<script>

    layui.use('form', function(){
        var form = layui.form;

        //监听提交
        form.on('submit(formDemo)', function(data){
            layer.msg(JSON.stringify(data.field));
            return false;
        });
    });
</script>
<script>
    let vue = new Vue({
        el:'.layui-body',
        data:{
            id:undefined,
            name:undefined,
            password:undefined,
            email:undefined,
            sex:undefined,
            phone:undefined,
            marriage:undefined,
            hobbies:undefined,
            status:undefined,
            address:undefined,
            education:undefined,
            birthday:undefined,
            hireday:undefined
        },
        methods: {

            update: function () {
                console.log('updatqqqe'),
                    axios.post('/employee/update',
                        {
                            id: this.id,
                            name: this.name,
                            password: this.password,
                            email: this.email,
                            sex: this.sex,
                            phone: this.phone,
                            marriage: this.marriage,
                            hobbies: this.hobbies,
                            address: this.address,
                            birthday: this.birthday,
                            education: this.education,
                            status: this.status,
                            hireday: this.hireday
                        }
                    ).then(res => {

                            alert(res.data.m);
                        location.reload();
                            console.log(res.m);
                    })
                        .catch(err => {
                            console.log(err);

                        });
            },
        },

        mounted(){
            this.id=${Employee.id},
                this.name='${Employee.name}',
                this.password=${Employee.password},
                this.email='${Employee.email}',
                this.sex='${Employee.sex}',
                this.phone=${Employee.phone},
                this.marriage='${Employee.marriage}',
                this.hobbies='${Employee.hobbies}',
                this.status='${Employee.status}',
                this.address='${Employee.address}',
                this.education='${Employee.education}',
                this.birthday='${Employee.birthday}',
                this.hireday=${Employee.hireday}
        }

               // 挂载（初始化
               // 发送网络请求
               <%-- this.id=${Employee.id};--%>
               //  console.log(this.id);
               // axios.get('/emloyee/v1/staff',{
               //          params: {
               //              id: this.id
               //          }
               //      })
               // .then(res => {
               //     console.log(res.employee);
               //     this.id = res.employee.id;
               //     this.username = res.employee.username;
               //     this.password=res.employee.password;
               //     this.email=re.employee.email
               // })
               // .catch(err => {
               //     console.error(err);
               // });
    })
</script>
</body>
</html>



