<%--
  Created by IntelliJ IDEA.
  User: zjjt
  Date: 2021/9/7
  Time: 21:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="r" uri="http://shiro.apache.org/tags" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
${message}<br>
<%--<h1>欢迎：${role}</h1>--%>
<r:hasPermission name="bookmanager:book:query">
    可以查询
</r:hasPermission>
<r:hasPermission name="bookmanager:book:add">
    可以新增
</r:hasPermission>
<r:hasPermission name="bookmanager:book:update">
    可以修改
</r:hasPermission>
<a href="/ssmshiro/handleUser/godel">删除用户</a>
<form action="/ssmshiro/handleUser/add" method="post">
    账号：<input type="text" name="username"/><br/>
    密码：<input type="password" name="password"/><br/>
    <input type="submit"/>

</form>
</body>
</html>
