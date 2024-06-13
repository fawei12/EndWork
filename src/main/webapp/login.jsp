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
<%--    <link rel="stylesheet" type="text/css" href="css/style.css">--%>
    <link rel="stylesheet" type="text/css" href="css/login.css">
</head>
<body>
<div class="dowebok">
    <div class="form sign-in">
        <form action="login" method="post">
            <h2>欢迎回来</h2>
            <label>
                <label for="username">用户名:</label>
                <input type="text" id="username" name="username" required>
            </label>
            <label>
                <label for="password">密码:</label>
                <input type="password" id="password" name="password" required>
            </label>
            <p class="forgot-pass"><a href="javascript:">忘记密码？</a></p>
            <button type="submit" class="submit">登 录</button>
        </form>
    </div>

    <div class="sub-cont">
        <div class="img">
            <div class="img__text m--up">
                <h2>还未注册？</h2>
                <p>立即注册，发现大量机会！</p>
            </div>
            <div class="img__text m--in">
                <h2>已有帐号？</h2>
                <p>有帐号就登录吧，好久不见了！</p>
            </div>
            <div class="img__btn">
                <span class="m--up">注 册</span>
                <span class="m--in">登 录</span>

            </div>
        </div>
        <div class="form sign-up">
            <form action="register" method="post">
            <h2>立即注册</h2>
            <label>

                <label for="username">用户名:</label>
                <input type="text" id="username" name="username" required>
            </label>
            <label>
                <label for="email">邮箱:</label>
                <input type="text" id="email" name="email" required>
            </label>
            <label>
                <label for="password">密码:</label>
                <input type="password" id="password" name="password" required>
            </label>
            <label>

                <label for="confirm_password">确认密码:</label>
                <input type="password" id="confirm_password" name="confirm_password" required>
            </label>
            <button type="submit" class="submit">注 册</button>
            </form>
        </div>
    </div>
</div>

<script src="js/login.js"></script>
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
</body>
</html>
