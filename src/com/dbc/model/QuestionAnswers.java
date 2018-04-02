/**
 * 
 */
package com.dbc.model;

/**
 * @author Mary
 *
 */
public class QuestionAnswers {
	private int Id;
	private String Question;
	private String Answer;
	private String Uname;
	private String News;
	private String Share;
	public String getShare() {
		return Share;
	}
	public void setShare(String share) {
		Share = share;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getQuestion() {
		return Question;
	}
	public void setQuestion(String question) {
		Question = question;
	}
	public String getAnswer() {
		return Answer;
	}
	public void setAnswer(String answer) {
		Answer = answer;
	}
	public String getUname() {
		return Uname;
	}
	public void setUname(String uname) {
		Uname = uname;
	}
	public String getNews() {
		return News;
	}
	public void setNews(String news) {
		News = news;
	}
	
	
}
