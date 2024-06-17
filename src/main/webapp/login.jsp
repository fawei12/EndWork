<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="./css/login.css">
</head>

<body>
<div class="box">
    <div class="forms">
        <div class="tips">
            <span class="login-btn">登录</span>
            <span class="register-btn">注册</span>
        </div>
        <!-- 登录 -->
        <div class="login">
            <!-- 欢迎语 -->
            <div class="form-title">
                <h1>你好</h1>
            </div>
            <!-- 表单 -->
            <form action="login" method="get">
                <div class="form">
                    <!-- 用户名 -->
                    <div class="username input-item">
                        <input type="text" class="ipts" name="username">
                    </div>
                    <!-- 密码 -->
                    <div class="password input-item">
                        <input type="password" class="ipts" name="password">
                    </div>
                    <!-- 忘记密码 -->
                    <div class="other-select">
                        <span class="fogot-pwd-btn">forgot password</span>
                    </div>
                    <button class="btn">Login</button>
                </div>
            </form>
        </div>
        <!-- 注册 -->
        <div class="register">
            <!-- 欢迎语 -->
            <div class="form-title">
                <h1>注册</h1>
            </div>
            <form action="register" method="get">
                <div class="form">
                    <!-- 用户名 -->
                    <div class="username input-item">
                        <input type="text" class="ipts" name="username">
                    </div>
                    <!-- 密码 -->
                    <div class="password input-item">
                        <input type="password" class="ipts" name="password">
                    </div>
                    <!-- 确认密码 -->
                    <div class="conform-password input-item">
                        <input type="password" class="ipts" name="conform-password">
                    </div>

                    <button class="btn">Register</button>
                </div>
            </form>
        </div>
        <!-- 忘记密码 -->
        <div class="fogot-pwd">
            <div class="form-title">
                <h1>忘记密码</h1>
            </div>
            <form action="" method="get">
                <div class="form">
                    <!-- 用户名 -->
                    <div class="username input-item">
                        <input type="text" class="ipts" name="username">
                    </div>
                    <!-- 密码 -->
                    <div class="password input-item">
                        <input type="password" class="ipts" name="password">
                    </div>
                    <!-- 确认密码 -->
                    <div class="conform-password input-item">
                        <input type="password" class="ipts" name="conform-password">
                    </div>
                    <span class="veri-code-tips"></span>
                    <button class="btn">Confirm</button>
                </div>
            </form>
        </div>
    </div>

</div>
</body>
<script>
    const login = document.querySelector('.login')
    const register = document.querySelector('.register')
    const fogotPwd = document.querySelector('.fogot-pwd')
    const registerBtn = document.querySelector('.register-btn')
    const loginBtn = document.querySelector('.login-btn')
    const fogotPwdBtn = document.querySelector('.fogot-pwd-btn')
    const veriCodeTips = document.querySelector('.veri-code-tips');
    let reckonTimeFlag = 5; //倒计时
    let reckonTime; //定时器
    //定时器
    function countDown() {
        veriCodeTips.innerHTML = `RESEND(${reckonTimeFlag})`
        reckonTimeFlag--;
        if (reckonTimeFlag < 0) {
            clearInterval(reckonTime);
            reckonTimeFlag = 5;
            veriCodeTips.innerHTML = `Click To Get`;
            veriCodeTips.style.color = "rgb(113 123 185)";
            veriCodeTips.onclick = veriCodeTipsClick;
        }
    }

    //点击事件触发的方法
    function veriCodeTipsClick() {
        veriCodeTips.onclick = null;
        veriCodeTips.style.color = "rgb(153, 151, 151)";
        reckonTime = setInterval(countDown, 1000);
        countDown();
    }

    veriCodeTips.addEventListener('click', function () {
        veriCodeTipsClick()
    })
    registerBtn.addEventListener('click', function () {
        login.style.opacity = '0'
        fogotPwd.style.opacity = '0'
        register.style.opacity = '1'
        login.style.zIndex = '-1'
        fogotPwd.style.zIndex = '-1'
        register.style.zIndex = '10'
        register.style.animation = 'into 1s ease'
        login.style.animation = 'none'
        fogotPwd.style.animation = 'none'
        registerBtn.style.borderBottom = '4px solid rgb(249, 177, 122)'
        registerBtn.style.color = '#fff'
        loginBtn.style.borderBottom = 'none'
        loginBtn.style.color = 'rgb(100, 108, 154)'
    })
    loginBtn.addEventListener('click', function () {
        login.style.opacity = '1'
        register.style.opacity = '0'
        fogotPwd.style.opacity = '0'
        login.style.zIndex = '10'
        fogotPwd.style.zIndex = '-1'
        register.style.zIndex = '-1'
        login.style.animation = 'into 1s ease'
        register.style.animation = 'none'
        fogotPwd.style.animation = 'none'
        registerBtn.style.borderBottom = ''
        registerBtn.style.color = 'rgb(100, 108, 154)'
        loginBtn.style.borderBottom = '4px solid rgb(249, 177, 122)'
        loginBtn.style.color = '#fff'
    })
    fogotPwdBtn.addEventListener('click', function () {
        fogotPwd.style.opacity = '1'
        login.style.opacity = '0'
        register.style.opacity = '0'
        login.style.zIndex = '-1'
        fogotPwd.style.zIndex = '10'
        register.style.zIndex = '-1'
        fogotPwd.style.animation = 'into 1s ease'
        register.style.animation = 'none'
        login.style.animation = 'none'

    })
</script>

</html>