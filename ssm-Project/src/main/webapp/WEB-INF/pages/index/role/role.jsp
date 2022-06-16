<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: xiaoACE
  Date: 2022/6/16
  Time: 9:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>角色</title>
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
            <h3>角色列表</h3>
        </div>
    </div>
</div>

<div class="btn-toolbar" role="toolbar" style="background-color: #F7F7F7; height: 50px; position: relative;left: 30px; width: 110%; top: 20px;">

    <div class="btn-group" style="position: relative; top: 18%;">
        <button type="button" class="btn btn-primary" onclick="window.location.href='toAddRole.do'"><span class="glyphicon glyphicon-plus"></span>创建</button>
    </div>

</div>

<div style="position: relative; left: 30px; top: 40px; width: 110%">
    <table class="table table-hover">
        <thead>
        <tr style="color: #B3B3B3;">
            <td>序号</td>
            <td>角色名字</td>
            <td>角色描述</td>
            <td>修改角色</td>
            <td>删除角色</td>
        </tr>
        </thead>

        <c:forEach items="${roles}" var="role">
            <tbody>
            <tr class="active">
                <td>${role.roleId}</td>
                <td>${role.roleName}</td>
                <td>${role.information}</td>
                <td><a href="toUpdateRole.do?roleId=${role.roleId}">修改</a></td>
                <td><a href="deleteRole.do?roleId=${role.roleId}">删除</a></td>
            </tr>
            </tbody>
        </c:forEach>

    </table>
</div>

</body>
</html>
