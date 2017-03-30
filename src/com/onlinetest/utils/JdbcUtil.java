package com.onlinetest.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.onlinetest.models.User;

public class JdbcUtil {

	private static final String JDBC_DRIVER = "com.mysql.jdbc.Driver";
	private static final String DB_URL = "jdbc:mysql://localhost/onlinetest";
	private static Connection conn;
	// Database credentials
	private static final String USER = "root";
	private static final String PASS = "root";

	public static Connection getConnection() throws SQLException, ClassNotFoundException {
		Class.forName(JDBC_DRIVER);
		Connection connection = DriverManager.getConnection(DB_URL, USER, PASS);
		return connection;
	}

	public static void save(User user) {
		Statement stmt = null;
		try{
			conn = getConnection();
			System.out.println("Inserting records into the table...");
			stmt = conn.createStatement();
			String sql = "INSERT INTO onlinetest.user  (name, password) values ('"+ user.getName() + "', '" + user.getPassword() + "')";
			System.out.println(sql);
			stmt.executeUpdate(sql);
			System.out.println("Inserted records into the table...");

		}catch(SQLException se){
			se.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt!=null && conn != null && !conn.isClosed())
					conn.close();
			}catch(SQLException se){
			}
			try{
				if(conn!=null) conn.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}
		System.out.println("Goodbye!");
	}

	public static User findByNameAndPassword(String username, String password) {
		Statement stmt = null;
		try{
			conn = getConnection();
			System.out.println("Getting records into the table...");
			stmt = conn.createStatement();
			String sql = "select * from onlinetest.user where name = '" + username + "' and password = '" + password + "' limit 1";
			System.out.println(sql);
			ResultSet rs = stmt.executeQuery(sql);
			System.out.println("Inserted records into the table...");
			if(rs.next()){
		         //Retrieve by column name
		         Long userid  = rs.getLong("userid");
		         String role = rs.getString("role");
		         String status = rs.getString("status");
		         User user = new User();
		         user.setUserId(userid);
		         user.setName(username);
		         user.setPassword(password);
		         user.setStatus(status);
		         user.setRole(role);
		         return user;
		      }
		}catch(SQLException se){
			se.printStackTrace();
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(stmt!=null && conn != null && !conn.isClosed())
					conn.close();
			}catch(SQLException se){
			}
			try{
				if(conn!=null) conn.close();
			}catch(SQLException se){
				se.printStackTrace();
			}
		}
		System.out.println("Goodbye!");
		return null;
	}
}
