package io.github.shenfa12.endwork.Utility;

import io.github.shenfa12.endwork.pojo.message;
import lombok.extern.slf4j.Slf4j;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

@Slf4j
public class ContactUtil {
    public static void Contact(message message) {
        String sql = "INSERT INTO message VALUES (NULL, ?, ?, ?)";
        try (Connection conn = DBUtil.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setString(1, message.getName());
            stmt.setString(2, message.getMail());
            stmt.setString(3, message.getMessage());
            stmt.executeUpdate();

            log.info("已成功为用户插入消息: {}", message.getName());
        } catch (SQLException e) {
            log.error("插入消息时出错", e);
            throw new RuntimeException(e);
        }
    }
}
