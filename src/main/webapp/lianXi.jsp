<%@ page import="endwork.pojo.message" %>
<%@ page import="endwork.Utility.ContactUtil" %>
<%@ page import="java.util.logging.Logger" %>
<%@ page import="java.util.logging.Level" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    request.setCharacterEncoding("utf-8");
    response.setContentType("text/html;charset=utf-8");
    boolean isSubmittedSuccessfully = false; // 标志位，用于判断是否成功提交

    Logger logger = Logger.getLogger("ContactLogger");

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
                isSubmittedSuccessfully = true;
            } catch (Exception e) {
                logger.log(Level.SEVERE, e.getMessage(), e);
            }
        }
    }
%>
<!DOCTYPE html>
<html>
<head>
    <title>联系我们</title>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/lianxi.css" rel="stylesheet">
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
<header>
    <h1>联系我们</h1>
    <nav>
        <ul>
            <li><a href="home.jsp">环境首页</a></li>
            <li><a href="pohuai.jsp">破坏案例</a></li>
            <li><a href="haoChu.jsp">保护好处</a></li>
            <li><a href="#">联系我们</a></li>
        </ul>
    </nav>
    <button class="header-button">
        <a href="bd.jsp">
            <img src="img/gly.png" width="17" alt="">
            <br>
        </a>
    </button>
</header>
<section>
    <div class="container">
        <div class="contactinfo">
            <div>
                <h2>联系方式</h2>
                <ul class="info">
                    <li>
                        <span><img src="img/dizhi.png"></span>
                        <span>四川文化产业职业学院</span>
                    </li>
                    <li>
                        <span><img src="img/youxiang.png"></span>
                        <span>2725443939@qq.com</span>
                    </li>
                    <li>
                        <span><img src="img/dianhua.png"></span>
                        <span>19960560890</span>
                    </li>
                </ul>
            </div>

        </div>
        <div class="contactForm">
            <h2>留言联系</h2>
            <div class="formBox">
                <div class="inputBox w50">
                    <input type="text" name="" required>
                    <span>昵称</span>
                </div>
                <div class="inputBox w50">
                    <input type="text" name="" required>
                    <span>姓名</span>
                </div>
                <div class="inputBox w50">
                    <input type="text" name="" required>
                    <span>邮箱地址</span>
                </div>
                <div class="inputBox w50">
                    <input type="text" name="" required>
                    <span>联系电话</span>
                </div>
                <div class="inputBox w100">
                    <textarea name="" required></textarea>
                    <span>有什么问题请留言，我会尽快给你回复</span>
                </div>
                <div class="inputBox w100">
                    <input type="submit" value="提交">
                </div>
            </div>
        </div>
    </div>
</section>

<div class="footer">
    <p>版权所有 © 2024 绿色化发展</p>
</div>
</body>
</html>
