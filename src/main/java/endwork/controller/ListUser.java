package endwork.controller;

import com.google.gson.Gson;
import endwork.Utility.ListUserUtil;
import endwork.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/getUsers")
public class ListUser extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");


        List<User> users = ListUserUtil.list();

        String json = new Gson().toJson(users);


        response.getWriter().write(json);

    }
}
