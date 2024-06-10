package io.github.shenfa12.endwork.Utility;

import io.github.shenfa12.endwork.pojo.user;
import lombok.extern.slf4j.Slf4j;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Slf4j
public class RegisterUtil {

    public static boolean register(user newUser) {
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement("INSERT INTO users (username, password) VALUES (?, ?)")) {
            stmt.setString(1, newUser.getUsername());
            stmt.setString(2, newUser.getPassword()); // 应考虑使用加密存储
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
