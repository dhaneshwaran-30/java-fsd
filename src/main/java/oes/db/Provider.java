package oes.db;
import java.sql.*;
public class Provider {
    public static Connection getDbConnection()
    {
        Connection con = null;
	try
        { 
            Class.forName("com.mysql.jdbc.Driver");
            
	    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/quiz","root","Dhanesh@30");
	    System.out.println("Connection successful!");
	}catch (Exception e) {System.out.println(e);}
    return con;
    }
}