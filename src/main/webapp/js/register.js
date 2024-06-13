function validatePasswords() {
    const password = document.getElementById('password').value;
    const confirmPassword = document.getElementById('confirm_password').value;
    if (password !== confirmPassword) {
        alert('两次输入的密码不一致，请重新输入！');
        return false;
    }
    // 正则表达式验证密码复杂性
    //const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
    const passwordRegex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d@$!%*?&.]{8,}$/;
    if (!passwordRegex.test(password)) {
        alert('密码必须包含至少8个字符，至少1个大写字母、1个小写字母和1个数字。');
        return false;
    }
    return true;
}

function validateUsername() {
    const username = document.getElementById('username').value;
    // 正则表达式验证用户名格式
    const usernameRegex = /^[a-zA-Z0-9_]+$/;
    if (!usernameRegex.test(username)) {
        alert('用户名只能包含字母、数字和下划线。');
        return false;
    }
    return true;
}