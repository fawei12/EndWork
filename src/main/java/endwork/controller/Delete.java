package endwork.controller;

import com.google.gson.Gson;
import endwork.Utility.DeleteUtil;
import endwork.pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;

@WebServlet("/deleteUser")
public class Delete extends HttpServlet {
    @Override
    protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        Gson gson = new Gson();
        BufferedReader reader = new BufferedReader(new InputStreamReader(request.getInputStream()));
        User user = gson.fromJson(reader, User.class);

        boolean success = DeleteUtil.delete(user);

        Map<String, Object> result = new HashMap<>();
        result.put("success", success);
        if (success) {
            result.put("message", "用户删除成功");
        } else {
            result.put("message", "用户删除失败");
        }
        response.getWriter().write(gson.toJson(result));
    }
}
