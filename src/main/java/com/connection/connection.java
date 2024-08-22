package com.connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class connection {
	
	public static Connection com;
	
	public static Connection getConnection() {
		
		try {
		      Class.forName("com.mysql.jdbc.Driver");
		      
		      com=DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","root");
		}
		catch (Exception e) {
			// TODO: handle exception
			System.out.println("Exception is "+e.getMessage());
		}
		return com;
	}
	

}
