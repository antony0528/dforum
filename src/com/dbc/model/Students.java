/**
 * 
 */
package com.dbc.model;

/**
 * @author Mary
 *
 */
public class Students {
	private int Id;
	private String Name;
	private String Password;
	private int Year;
	private String Department;
	private int Status;
	private String Username;
	private String Male;
	public String getMale() {
		return Male;
	}
	public void setMale(String male) {
		Male = male;
	}
	public String getUsername() {
		return Username;
	}
	public void setUsername(String username) {
		Username = username;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String getPassword() {
		return Password;
	}
	public void setPassword(String password) {
		Password = password;
	}
	public int getYear() {
		return Year;
	}
	public void setYear(int year) {
		Year = year;
	}
	public String getDepartment() {
		return Department;
	}
	public void setDepartment(String department) {
		Department = department;
	}
	public int getStatus() {
		return Status;
	}
	public void setStatus(int status) {
		Status = status;
	}	
}
