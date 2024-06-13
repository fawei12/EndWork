<%@ page import="io.github.shenfa12.endwork.pojo.message" %>
<%@ page import="io.github.shenfa12.endwork.Utility.ContactUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    boolean isSubmittedSuccessfully = false; // 标志位，用于判断是否成功提交

    // 仅在表单提交后处理数据
    if ("POST".equalsIgnoreCase(request.getMethod())) {
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String userMessage = request.getParameter("message");

        // 确保所有字段都有值
        if (name != null && email != null && userMessage != null) {
            try {
                message Message = new message(name, email, userMessage);
                ContactUtil.Contact(Message);
                isSubmittedSuccessfully = true; // 如果没有异常，设置为成功
            } catch (Exception e) {
                // 可以在这里处理异常，例如记录日志等
                isSubmittedSuccessfully = false;
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>联系我们</title>
    <link href="css/style.css" rel="stylesheet">
    <script>
        function validateContactForm() {
            var name = document.getElementById('name').value;
            var email = document.getElementById('email').value;
            var message = document.getElementById('message').value;

            if (!name || !email || !message) {
                alert('所有字段都是必填项，请确保填写完整！');
                return false;
            }

            var emailRegex = /\b[\w\.]+@[a-zA-Z]+(\.[a-zA-Z]{2,}){1,2}\b/;
            if (!emailRegex.test(email)) {
                alert('请输入有效的电子邮件地址。');
                return false;
            }

            return true; // 通过所有验证
        }

        function hideSuccessMessage() {
            var successMessage = document.getElementById('successMessage');
            if (successMessage) {
                successMessage.style.display = 'none';
            }
        }

        window.onload = function() {
            setTimeout(hideSuccessMessage, 3000); // 设置3秒后隐藏成功消息
        };
    </script>
</head>
<body>
<div class="header">
    <h1>联系我们</h1>
</div>
<div class="nav">
    <a href="home.jsp">首页</a>
    <a href="about.jsp">关于</a>
    <a href="projects.jsp">项目</a>
    <a href="#">联系方式</a>
</div>
<div class="contact-form">
    <h2>联系我们</h2>
    <form action="contact.jsp" method="post" onsubmit="return validateContactForm();">
        <label for="name">姓名：</label>
        <input type="text" id="name" name="name" required>
        <label for="email">电子邮件：</label>
        <input type="email" id="email" name="email" pattern="[a-zA-Z0-9._%+-]+@[a-zA-Z0-9-]+(\.[a-zA-Z0-9-]+)*\.[a-zA-Z]{2,6}" title="请输入有效的电子邮件地址。" required>
        <label for="message">留言：</label>
        <textarea id="message" name="message" rows="4" required></textarea>
        <input type="submit" class="btn" value="发送">
    </form>
    <% if (isSubmittedSuccessfully) { %>
    <p id="successMessage" style="color: green;">提交成功！感谢您的反馈。</p>
    <% } %>
</div>

<div class="contact-info">
    <h3>其他联系方式</h3>
    <p>电话：17674757463</p>
    <p>邮箱：lx496957@gmail</p>
    <p>地址：湖南软件职业技术学院</p>
</div>
<div class="footer">
    <p>版权所有 © 2024 绿色化发展</p>
</div>
</body>
</html>
