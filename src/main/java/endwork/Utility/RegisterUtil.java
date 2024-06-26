package endwork.Utility;

import endwork.pojo.User;
import lombok.extern.slf4j.Slf4j;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Slf4j
public class RegisterUtil {

    public static boolean register(User newUser) {
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO users (username, password,email) VALUES (?, ?, ?)")) {
            stmt.setString(1, newUser.getUsername());
            stmt.setString(2, newUser.getPassword());
            stmt.setString(3, newUser.getEmail());
            int result = stmt.executeUpdate();

            if (result > 0) {
                log.info("用户注册成功: {}", newUser.getUsername());
                return true;
            } else {
                log.warn("用户注册失败: {}", newUser.getUsername());
                return false;
            }
        } catch (SQLException e) {
            log.error("用户注册时出现 SQL 错误: {}", newUser.getUsername(), e);
            return false;
        } catch (Exception e) {
            log.error("用户注册期间出现意外错误: {}", newUser.getUsername(), e);
            return false;
        }
    }
}
