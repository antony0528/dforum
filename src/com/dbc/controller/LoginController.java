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
 * Servlet implementation class LoginController
 */
@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String LOGIN = "/login.jsp";
	private static final String HOME = "/Forum/Home.jsp";
	private static final String ADMIN  = "/Forum/Admin.jsp";
    /**
     * @see HttpServlet#HttpServlet()
     */
	ServiceUserImplement serviceUserImplement;

	
    public LoginController() throws ClassNotFoundException, SQLException {
        super();
        serviceUserImplement = new ServiceUserImplement();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		String URL = null;
		String action = request.getParameter("action");
		if (action.equals("login")) {
			URL = LOGIN;
		}
		else if (action.equals("logout")) {
			URL = LOGIN;
		}
		else {
			response.sendRedirect(LOGIN);
		}
		dispatcher = request.getRequestDispatcher(URL);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		String action = request.getParameter("submit");
		String Uname = request.getParameter("txtuser");
		String Upass = request.getParameter("txtpass");
		String URL = null;
		List<Students> list = new ArrayList<Students>();
		if (action.equals("Login")) {
			ResultSet resultSet;
			try {
				resultSet = serviceUserImplement.getStudentlist(Uname);
				Students students = new Students();
				while (resultSet.next()) {
					students.setId(resultSet.getInt("id"));
					students.setName(resultSet.getString("name"));
					students.setUsername(resultSet.getString("username"));
					students.setPassword(resultSet.getString("pass"));
					list.add(students);
				}
				if (list.size()!=0) {
					if (students.getUsername().equals(Uname) & students.getPassword().equals(Upass)) {
						String na = students.getName();
						serviceUserImplement.changeStudentStatus(students.getId());
						
						resultSet = serviceUserImplement.loginUsers();
						List<Students> list1 = new ArrayList<Students>();
						while (resultSet.next()) {
							Students students1 = new Students();
							students1.setName(resultSet.getString("name"));
							list1.add(students1);
						}
						if (students.getUsername().equals("admin")) {
							URL = "Home";
						}
						else {
							URL = HOME;
						}
						request.setAttribute("name",na);
						request.setAttribute("students", list1);
					}
					else {
						URL = LOGIN;
						request.setAttribute("error", "Invalid Password");
					}
				}
				else {
					URL = LOGIN;
					request.setAttribute("error", "Invalid Password");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}			
		}
		dispatcher = request.getRequestDispatcher(URL);
		dispatcher.forward(request, response);
	}
}