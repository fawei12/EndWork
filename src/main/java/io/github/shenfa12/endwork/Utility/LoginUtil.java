package io.github.shenfa12.endwork.Utility;

import io.github.shenfa12.endwork.pojo.user;
import lombok.extern.slf4j.Slf4j;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

@Slf4j
public class LoginUtil {
    public static boolean Login(user user) {
        boolean loginSuccess = false;
        String sql = "SELECT * FROM users WHERE username=? AND password=?";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setString(1, user.getUsername());
            stmt.setString(2, user.getPassword()); // 注意这里应该是哈希过的密码
            try (ResultSet rs = stmt.executeQuery()) {
                loginSuccess = rs.next();
                if (loginSuccess) {
                    log.info("用户登录成功: {}", user.getUsername());
                } else {
                    log.info("用户登录失败: {}", user.getUsername());
                }
            }
        } catch (SQLException e) {
            log.error("用户登录期间数据库错误: {}", user.getUsername(), e);
        } catch (Exception e) {
            log.error("用户登录期间出现意外错误: {}", user.getUsername(), e);
        }
        return loginSuccess;
    }
}
