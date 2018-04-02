/**
 * 
 */
package com.dbc.serviceimplementation;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbc.dbconnection.DBConnection;
import com.dbc.model.Students;
import com.dbc.service.ServiceUsers;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * @author Mary
 *
 */
public class ServiceUserImplement implements ServiceUsers {
	
	
	ResultSet resultSet;
	Connection connection;
	Statement statement;
	public ServiceUserImplement() throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		statement = (Statement) connection.createStatement();
	}

	@Override
	public ResultSet getStudentlist(String username) throws SQLException {
		String listQuery = "select * from tbl_students where username='"+username+"';";
		resultSet = statement.executeQuery(listQuery);
		return resultSet;
	}

	@Override
	public void changeStudentStatus(int id) throws SQLException {
		String UpdateStatus = "update tbl_students set status=1 where id='"+id+"';";
		statement.executeUpdate(UpdateStatus);
	}

	@Override
	public void registerAccount(Students students) throws SQLException {
		String insertQuery = "insert into tbl_students(name,pass,year,dept,username) values('"+students.getName()+"',"
				+ "'"+students.getPassword()+"','"+students.getYear()+"',"
				+ "'"+students.getDepartment()+"','"+students.getUsername()+"');";
		statement.execute(insertQuery);
	}

	@Override
	public ResultSet loginUsers() throws SQLException {
		String listUsers = "select name from tbl_students where status=1;";
		resultSet =statement.executeQuery(listUsers);
		return resultSet;
	}

	@Override
	public void logoutUsers() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public ResultSet totalStudentList() throws SQLException {
		String listQuery = "select * from tbl_students";
		resultSet = statement.executeQuery(listQuery);
		return resultSet;
	}

}
