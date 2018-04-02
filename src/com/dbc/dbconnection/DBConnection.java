/**
 * 
 */
package com.dbc.dbconnection;

import java.sql.DriverManager;
import java.sql.SQLException;

import com.mysql.jdbc.Connection;

/**
 * @author Mary
 *
 */
public class DBConnection {
	static Connection connection=null;
	static String url="jdbc:mysql://localhost:3306/student";
	static String classname="com.mysql.jdbc.Driver";
	static String root="root";
	static String pword="root";
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		Class.forName(classname);
		connection= (Connection) DriverManager.getConnection(url,root,pword);
		return connection;
	}
}
