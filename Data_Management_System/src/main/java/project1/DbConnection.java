package project1;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbConnection {
    private static final String URL = "jdbc:mysql://localhost:3306/project1"; 
    private static final String USER = "root";  
    private static final String PASSWORD = "1234";  
    
    public static Connection getConnection() throws ClassNotFoundException, SQLException  {
        Connection connection = null;
        Class.forName("com.mysql.cj.jdbc.Driver");
        connection = DriverManager.getConnection(URL, USER, PASSWORD);
        return connection;  
    }
}

