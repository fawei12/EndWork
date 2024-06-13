package io.github.shenfa12.endwork.controller;

import io.github.shenfa12.endwork.pojo.user;
import io.github.shenfa12.endwork.Utility.RegisterUtil;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet("/register")
public class Register extends HttpServlet {
    private static final long serialVersionUID = -8149663813386668406L;

    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        user user = new user(null, username, password,email);
        boolean flag = RegisterUtil.register(user);
        HttpSession session = request.getSession();
        String message = null;
        if (flag) {
            message = "注册成功";
            session.setAttribute("message", message);
            response.sendRedirect("login.jsp");
        } else {
            message = "注册失败";
            session.setAttribute("message", message);
            response.sendRedirect("register.jsp");
        }
    }
}
