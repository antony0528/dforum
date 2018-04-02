package com.dbc.controller;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbc.model.Students;
import com.dbc.serviceimplementation.ServiceUserImplement;

/**
 * Servlet implementation class Home
 */
@WebServlet("/Home")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String ADMIN  = "/Forum/Admin.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
	ServiceUserImplement implement;
    public Home() throws ClassNotFoundException, SQLException {
        super();
        implement = new ServiceUserImplement();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		Students student = new Students();
		ServiceUserImplement implement;
		List<Students> students = null;
		String URL = null;
		try {
			students = new ArrayList<Students>();
			students = studentlist();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		URL =ADMIN;
		request.setAttribute("students", students);
		dispatcher = request.getRequestDispatcher(URL);
		dispatcher.forward(request, response);
	}	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	private List<Students> studentlist() throws SQLException, ClassNotFoundException{
		List<Students> list = new ArrayList<Students>();
		ResultSet  resultSet;
		implement = new ServiceUserImplement();
		resultSet = implement.totalStudentList();
		while (resultSet.next()) {
			Students student = new Students();
			student.setId(resultSet.getInt("id"));	
			student.setName(resultSet.getString("name"));
			student.setYear(resultSet.getInt("year"));
			student.setDepartment(resultSet.getString("dept"));
			student.setUsername(resultSet.getString("username"));
			student.setPassword(resultSet.getString("pass"));
			list.add(student);
		}
		return list;
	}

}
