<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register Account</title>
<link rel="stylesheet" href="js/bootstrap.min.css">
<script src="../js/jquery.min.js"></script>
  <script src="../js/bootstrap.min.js"></script>
<style type="text/css">
body{
	background-color: teal;
	font-size: 18px;
	font-family: Arial;
}
.wrapper
{
	width:100%;
	font-weight: 400px;
}
.form{
	padding: 20px;
	width:500px;
	margin-top: 40px;
	margin-left:230px;
	background-color: white;
}
.container
{
    clear:both;
    background-color:#eee;
	margin:0 auto;
	width:1000px;
}
input[type=text]{
	width: 230px;
 	border: 2px solid lightblue;
 	height: 30px;
 	margin-left: 10px;
 	margin-top: 13px;
 	outline-color: #eee;
 	padding: 0px;
 	font-family: Arial;
}
input[type=password]{
	width: 230px;
 	border: 2px solid lightblue;
 	height: 30px;
 	margin-left: 10px;
 	margin-top: 13px;
 	outline-color: #eee;
 	padding: 0px;
 	font-family: Arial;
}
input[type=submit]{
 	float: left;
 	margin-left: 105px;
 	margin-top: 50px;
 	background-color: olive;
    border: none;
    color: white;
    padding: 9px 17px;
    font-family: Arial;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
 }
 input[type=reset] {
	float: right;
	margin-right: 100px;
 	margin-top: 50px;
 	background-color: olive; 
    border: none;
    color: white;
    padding: 9px 17px;
    text-align: center;
    font-family: Arial;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}

#create-head{
	background-color: maroon;
	font-family: Times New Roman;
	color: white;
}
</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<!-- <div class="alert alert-success alert-dismissable">
    			<a href="#" class="close" data-dismiss="alert" aria-label="close">×</a>
    			<strong>Hello!<strong>
  			</div> -->
  			<h1 align="center" id="create-head">Create an Account</h1>
  			<div class="form">
  				<form action="RegisterAccount" method="post">
					<table align="center" style="width:550px; height:450px;">
					<tr>
					<td>Name<span style="color: red;">*</span></td>
					<td><input type="text" name="name" required></td>
					</tr>
					<tr>
					<td>User Name<span style="color: red;">*</span></td>
					<td><input type="text" name="uname" required></td>
					</tr>
					<tr>
					<td>Password<span style="color: red;">*</span></td>
					<td><input type="password" name="upass" id="u1" required></td>
					</tr>
					<tr>
					<td>Confirm Password<span style="color: red;">*</span></td>
					<td><input type="password" name="confirmpass" id="u2" required></td>
					</tr>
					<tr>
					<td>Year</td>
					<td><input type="text" name="year"></td>
					</tr>
					<tr>
					<td>Department</td>
					<td><input type="text" name="dept">
					</tr>
					</table> 
					<input type="submit" name="submit" value="Submit">
					<input type="reset" name="clear"> 				
  				</form>
  				<a href="">Home</a>
  			</div>
  			<div style="height:200px; ">
  			</div>
  		</div>
	</div>
</body>
</html>