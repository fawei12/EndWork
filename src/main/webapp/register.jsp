<%--
  Created by IntelliJ IDEA.
  User: lx305
  Date: 2024/6/9
  Time: 下午9:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Register</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
<%--    <script>--%>
<%--        function validatePasswords() {--%>
<%--            const password = document.getElementById('password').value;--%>
<%--            const confirmPassword = document.getElementById('confirm_password').value;--%>
<%--            if (password !== confirmPassword) {--%>
<%--                alert('两次输入的密码不一致，请重新输入！');--%>
<%--                return false;--%>
<%--            }--%>
<%--            // 正则表达式验证密码复杂性--%>
<%--            //const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;--%>
<%--            const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d@$!%*?&.]{8,}$/;--%>
<%--            if (!passwordRegex.test(password)) {--%>
<%--                alert('密码必须包含至少8个字符，至少1个大写字母、1个小写字母和1个数字。');--%>
<%--                return false;--%>
<%--            }--%>
<%--            return true;--%>
<%--        }--%>

<%--        function validateUsername() {--%>
<%--            const username = document.getElementById('username').value;--%>
<%--            // 正则表达式验证用户名格式--%>
<%--            const usernameRegex = /^[a-zA-Z0-9_]+$/;--%>
<%--            if (!usernameRegex.test(username)) {--%>
<%--                alert('用户名只能包含字母、数字和下划线。');--%>
<%--                return false;--%>
<%--            }--%>
<%--            return true;--%>
<%--        }--%>
<%--    </script>--%>
</head>
<body>
<div class="header">
    <h1>注册</h1>
</div>

<%
    String message = (String) session.getAttribute("message");
    if (message != null) {
%>
<script type="text/javascript">
    window.onload = function() {
        alert("<%=message%>");
        <%
            session.removeAttribute("message");
        %>
    };
</script>
<%
    }
%>

<div class="content">
    <form action="register" method="post" onsubmit="return validatePasswords() && validateUsername();">

        <label for="username">用户名:</label>
        <input type="text" id="username" name="username" required>

        <label for="email">邮箱:</label>
        <input type="email" id="email" name="email" required>

        <label for="password">密码:</label>
        <input type="password" id="password" name="password" required>

        <label for="confirm_password">确认密码:</label>
        <input type="password" id="confirm_password" name="confirm_password" required>

        <input type="submit" value="注册" class="btn">
    </form>
    <div class="link-to-login">
        <a href="login.jsp">已有账户？点击这里登录</a>
    </div>
</div>
<div class="footer">
    <p>版权所有 © 2024</p>
</div>
<script src="js/register.js"></script>
</body>
</html>
