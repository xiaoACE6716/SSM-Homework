
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>增加用户</title>
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!-- 最新版本的 Bootstrap 核心 CSS 文件 -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"
          integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu"
          crossorigin="anonymous">

    <!-- 可选的 Bootstrap 主题文件（一般不用引入） -->
    <link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css"
          integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ"
          crossorigin="anonymous">

    <!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"
            integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd"
            crossorigin="anonymous"></script>
</head>
<body>

<div>
    <div style="position: relative; left: 30px; top: -10px;">
        <div class="page-header">
            <h3>添加用户</h3>
        </div>
    </div>
</div>

<form class="form-horizontal" role="form" action="addUser.do" method="post">

    <div class="form-group">
        <label for="userName" class="col-sm-2 control-label">登录帐号<span style="font-size: 15px; color: red;">*</span></label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="userName" name="userName" value="${user.userName}">
        </div>
        <label for="password" class="col-sm-2 control-label">登录密码<span style="font-size: 15px; color: red;">*</span></label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="password" class="form-control" id="password" name="password" value="${user.password}">
        </div>
    </div>
    <div class="form-group">

        <label for="nickname" class="col-sm-2 control-label">用户姓名</label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="nickName" name="nickName" value="${user.nickName}">
        </div>
        <label for="sex" class="col-sm-2 control-label" >性别(0为男，1为女)</label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="sex" name="sex" value="${user.sex}">
        </div>
    </div>
    <div class="form-group">
        <label for="email" class="col-sm-2 control-label">邮箱</label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="email" name="email" value="${user.email}">
        </div>
        <label for="phonenumber" class="col-sm-2 control-label">手机</label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="phonenumber" name="phonenumber" value="${user.phonenumber}">
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <input type="submit" class="btn btn-primary" data-dismiss="modal" value="保存" ></button>
    </div>
</form>
</body>
</html>
