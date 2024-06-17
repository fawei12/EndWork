package endwork.Utility;

import endwork.pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class LoginUtil {
    public static boolean Login(User user) {
        boolean loginSuccess = false;
        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword());
            try (ResultSet rs = stmt.executeQuery()) {
                loginSuccess = rs.next();
                if (loginSuccess) {
                    System.out.println("用户登录成功: " + user.getUsername());
                } else {
                    System.out.println("用户登录失败: " + user.getUsername());
                }
            }
        } catch (SQLException e) {
            System.out.println("用户登录期间数据库错误: " + user.getUsername() + e);
        } catch (Exception e) {
            System.out.println("用户登录期间出现意外错误: " + user.getUsername() + e);
        }
        return loginSuccess;
    }
}
