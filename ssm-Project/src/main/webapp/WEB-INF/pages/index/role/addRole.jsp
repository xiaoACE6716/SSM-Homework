<%--
  Created by IntelliJ IDEA.
  User: xiaoACE
  Date: 2022/6/16
  Time: 14:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加角色</title>
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
            <h3>添加角色</h3>
        </div>
    </div>
</div>

<form class="form-horizontal" role="form" action="addRole.do" method="post">

    <div class="form-group">
        <label for="roleName" class="col-sm-2 control-label">角色名称</label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="roleName" name="roleName" value="${role.roleName}">
        </div>
        <label for="information" class="col-sm-2 control-label">角色描述</label>
        <div class="col-sm-10" style="width: 300px;">
            <input type="text" class="form-control" id="information" name="information" value="${role.information}">
        </div>
    </div>


    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
        <input type="submit" class="btn btn-primary" data-dismiss="modal" value="保存" ></button>
    </div>
</form>

</body>
</html>
