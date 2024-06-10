package io.github.shenfa12.endwork.controller;

import io.github.shenfa12.endwork.Utility.RegisterUtil;
import io.github.shenfa12.endwork.pojo.user;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = 5321514090222093535L;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String confirm_password = request.getParameter("confirm_password");
        user newUser = new user(null, username, password, confirm_password);

        boolean registered = RegisterUtil.register(newUser);
        if (registered) {
            response.sendRedirect("login.jsp"); // 注册成功跳转到登录页
        } else {
            response.getWriter().println("<script>alert('注册失败，用户名可能已存在！'); window.location='register.jsp';</script>");
        }
    }
}
