/**
 * 
 */
package com.dbc.service;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbc.model.Students;

/**
 * @author Mary
 *
 */
public interface ServiceUsers {
	
	public ResultSet  getStudentlist(String username) throws SQLException;
	
	public void changeStudentStatus(int id) throws SQLException;
	
	public ResultSet loginUsers() throws SQLException;
	
	public void logoutUsers();
	
	public void registerAccount(Students students) throws SQLException;
	
	public ResultSet totalStudentList() throws SQLException;
}
