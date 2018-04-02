package com.dbc.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.Scanner;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dbc.model.Students;
import com.dbc.serviceimplementation.ServiceUserImplement;

/**
 * Servlet implementation class RegisterAccount
 */
@WebServlet("/RegisterAccount")
public class RegisterAccount extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String HOME = "/Forum/Home.jsp";
    private static final String REGISTER = "/Forum/register.jsp";
    private static final String LOGIN = "login.jsp";
    private static final String ADMIN  = "/Forum/Admin.jsp";
   
    /**
     * @see HttpServlet#HttpServlet()
     */
    
    ServiceUserImplement serviceUserImplement;
    public RegisterAccount() throws ClassNotFoundException, SQLException {
        super();
        serviceUserImplement = new ServiceUserImplement();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher requestDispatcher = null;
		String action = request.getParameter("action");
		String URL = null;
		if (action.equals("Register")) {
			URL = REGISTER;
		}
		requestDispatcher =request.getRequestDispatcher(URL);
		requestDispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		String URL = null;
		Students students = new Students();
		//ServiceUserImplement serviceUserImplement = null;
		String action = request.getParameter("submit");
		
		if (action.equals("Submit")) {
			students.setName(request.getParameter("name"));
			students.setUsername(request.getParameter("uname"));
			students.setPassword(request.getParameter("upass"));
			int year = Integer.parseInt(request.getParameter("year"));
			students.setYear(year);
			students.setDepartment(request.getParameter("dept"));
			
			try {
				serviceUserImplement.registerAccount(students);
				URL = ADMIN;
				String msg = "Hello()"; 
				request.setAttribute("success",msg );
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		dispatcher = request.getRequestDispatcher(URL);
		dispatcher.forward(request, response);
		
	}

}
