/**
 * 
 */
package com.dbc.serviceimplementation;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.dbc.dbconnection.DBConnection;
import com.dbc.service.ServiceQuestionAnswers;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;

/**
 * @author Mary
 *
 */
public class ServiceQuestionAnswerImplement implements ServiceQuestionAnswers{
	
	Connection connection;
	ResultSet resultSet;
	Statement statement;
	public ServiceQuestionAnswerImplement() throws ClassNotFoundException, SQLException {
		connection = DBConnection.getConnection();
		statement = (Statement) connection.createStatement();
	}

	@Override
	public ResultSet getQuestionList() throws SQLException {
		String listQuestion = "select qno,question from tbl_data where answer=1;";
		resultSet = statement.executeQuery(listQuestion);
		return resultSet;
	}

	@Override
	public ResultSet getQuestionAnswer() throws SQLException {
		String listQuestionAnswer = "select qno,question,answer from tbl_data where answer!=1;";
		resultSet = statement.executeQuery(listQuestionAnswer);
		return resultSet;
	}

	@Override
	public void insertAnswer(String id,String answer) throws SQLException {
		String insertQuery = "update tbl_data set answer='"+answer+"' where qno='"+id+"';";
		statement.executeUpdate(insertQuery);
	}

	@Override
	public void insertQuestion(String question) throws SQLException {
		String insertQuery = "insert into tbl_data(question,answer) values('"+question+"','"+1+"');";
		statement.execute(insertQuery);
	}

	@Override
	public void updateAnswer(String id, String answer) throws SQLException {
		String updateAnswer = "update tbl_data set answer='"+answer+"' where qno='"+id+"';";
		statement.executeUpdate(updateAnswer);
	}

	@Override
	public void insertShare(String share) throws SQLException {
		String insertShare = "insert into tbl_share values('"+share+"');";
		statement.execute(insertShare);
	}

	@Override
	public ResultSet getShareList() throws SQLException {
		String listShare = "select * from tbl_share;";
		resultSet = statement.executeQuery(listShare);
		return resultSet;
	}

}
