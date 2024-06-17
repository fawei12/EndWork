package endwork.Utility;

import endwork.pojo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DeleteUtil {
    public static boolean delete(User user) {
        String sql = "DELETE FROM users WHERE id=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, user.getId());
            System.out.println(user);
            System.out.println(sql);
            int d = stmt.executeUpdate();
            if (d > 0) {
                System.out.println("删除成功 :" + user.getId());
                return true;
            }else {
                System.out.println("删除失败 :" + user.getId());
                return false;
            }

        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }
}
