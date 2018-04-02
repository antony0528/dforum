/**
 * 
 */
package com.dbc.service;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * @author Mary
 *
 */
public interface ServiceQuestionAnswers {
	
	public ResultSet getQuestionList() throws SQLException;
	
	public ResultSet getQuestionAnswer() throws SQLException;
	
	public void insertAnswer(String id,String answer) throws SQLException;
	
	public void insertQuestion(String question) throws SQLException;
	
	public void updateAnswer(String id,String answer) throws SQLException;
	
	public void insertShare(String share) throws SQLException;
	
	public ResultSet getShareList() throws SQLException;
}
