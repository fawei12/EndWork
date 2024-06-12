<%--
  Created by IntelliJ IDEA.
  User: lx305
  Date: 2024/6/9
  Time: 下午6:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
<div class="header">
    <h1>登录</h1>
</div>

<%
    String message = (String) session.getAttribute("message");
    if (message != null) {
%>
<script type="text/javascript">
    alert("<%=message%>");
</script>
<%
        session.removeAttribute("message"); // 清除消息，防止重复弹出
    }
%>
<div class="content">
    <form action="login" method="post">
        <label for="username">用户名:</label>
        <input type="text" id="username" name="username" required>
        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required>
        <input type="submit" class="btn" value="登录">
        <button onclick="window.location.href='register.jsp'; return false;" class="btn">注册</button>
    </form>
</div>

<div class="footer">
    <p>版权所有 © 2024</p>
</div>
</body>
</html>