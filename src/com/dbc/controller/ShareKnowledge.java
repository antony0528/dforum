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

import com.dbc.model.QuestionAnswers;
import com.dbc.serviceimplementation.ServiceQuestionAnswerImplement;

/**
 * Servlet implementation class ShareKnowledge
 */
@WebServlet("/ShareKnowledge")
public class ShareKnowledge extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	private static final String HOME = "./Forum/Home.jsp";
	private static final String QUESTIONS = "./Forum/Questions.jsp";
	private static final String ANSWERS = "./Forum/Answers.jsp";
	private static final String SHARE = "./Forum/Share.jsp";
       
    /**
     * @see HttpServlet#HttpServlet()
     */
	ServiceQuestionAnswerImplement answerImplement;
    public ShareKnowledge() throws ClassNotFoundException, SQLException {
        super();
        answerImplement = new ServiceQuestionAnswerImplement();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		String URL = null;
		String action = request.getParameter("action");
		//QuestionAnswers answers1 = new QuestionAnswers();
		List<QuestionAnswers> list = new ArrayList<QuestionAnswers>();
		//String name = request.getParameter("id");	
		ResultSet resultSet;
		if (action.equals("Share")) {
			try {
				resultSet = answerImplement.getShareList();
				while (resultSet.next()) {
					QuestionAnswers answers = new QuestionAnswers();
					answers.setShare(resultSet.getString("share"));
					list.add(answers);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
			URL = SHARE;
			request.setAttribute("share", list);
		}
		
		dispatcher = request.getRequestDispatcher(URL);
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher dispatcher = null;
		String URL = null;
		String action = request.getParameter("submit");
		
		if (action.equals("Share")) {
			//String userid = request.getParameter("userid");
			String answer = request.getParameter("share");
			List<QuestionAnswers> list = new ArrayList<QuestionAnswers>();
			try {
				answerImplement.insertShare(answer);
				ResultSet resultSet;
				resultSet = answerImplement.getShareList();
				while (resultSet.next()) {
						QuestionAnswers answers = new QuestionAnswers();
						answers.setShare(resultSet.getString("share"));
						list.add(answers);
				}
				} catch (SQLException e) {
					e.printStackTrace();
				}
				URL = SHARE;
				request.setAttribute("share", list);
		}
	dispatcher = request.getRequestDispatcher(URL);
	dispatcher.forward(request, response);
	}
}
