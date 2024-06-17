package endwork.Utility;

import endwork.pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UpdateUtil {
    public static boolean update(User user) {
        String sql = "UPDATE users SET username=?,password=?,email=? WHERE id=?";
        try (Connection conn = DBUtil.getConnection()) {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, user.getUsername());
            ps.setString(2, user.getPassword());
            ps.setString(3, user.getEmail());
            ps.setInt(4, user.getId());
            int rows = ps.executeUpdate();
            if (rows > 0) {
                System.out.println("修改成功 :" + user.getUsername());
                return true;
            }else {
                System.out.println("修改失败 :" + user.getUsername());
                return false;
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
