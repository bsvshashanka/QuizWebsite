package com.quizwebsite.quizwebsite;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class JDBCConnect {
    public static Connection init() throws ClassNotFoundException, SQLException {
        String dbUrl = "jdbc:mysql://localhost:3306/quizPlatform";
        String dbUsername = "root";
        String dbPassword = "konaseema@68";
        Class.forName("com.mysql.jdbc.Driver");
        return DriverManager.getConnection(dbUrl, dbUsername, dbPassword);
    }
}
