package endwork.controller;

import endwork.pojo.User;
import endwork.Utility.RegisterUtil;

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
        String conformPassword = request.getParameter("conform-password");
        String email = request.getParameter("email");
        HttpSession session = request.getSession();
        String message = null;

        if (conformPassword != null && !conformPassword.isEmpty()) {
            if (!password.equals(conformPassword)) {
                message = "输入的两次密码不一致";
                session.setAttribute("message", message);
                response.sendRedirect("bd.jsp");
                return;
            }
        }


        User user = new User(); // 使用正确的类命名
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);

        boolean flag = RegisterUtil.register(user);

        if (flag) {
            message = "注册成功";
            session.setAttribute("message", message);
            response.sendRedirect("bd.jsp");
        } else {
            message = "注册失败";
            session.setAttribute("message", message);
            response.sendRedirect("bd.jsp");
        }
    }
}
