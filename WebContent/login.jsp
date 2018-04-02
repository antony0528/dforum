<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<style type="text/css">
body{
background-color: teal;
}
.wrapper
{
	width:100%;
	font-weight: 400px;
}

.container
{
    clear:both;
    background-color:White;
	margin:0 auto;
	width:1000px;
}
.login-box{
	margin-left: 335px;
	width: 350px;
	height: 250px;
	border: 2px solid lightblue;
	box-shadow: 0 4px 7px 0 rgba(0, 0, 0, 0.6);
	
}
.login-box h3{
	margin: 0px 0px;
  	line-height: 40px;
  	font-family:Times New Roman;
  	font-size: 17px;
  	background-color:olive;
  	color: white;
 }
 input[type=text]{
 	width: 170px;
 	border: 1.5px solid lightblue;
 	height: 25px;
 	margin-left: 10px;
 	margin-top: 17px;
 	outline-color: #eee;
 	padding: 5px;
 	font-family: Arial;
 }
 input[type=password]{
 	width: 170px;
 	height: 25px;
 	padding:5px;
 	border: 1.5px solid lightblue;
 	outline-color:#eee;
 	font-family:Arial;
 	margin-left: 11px;
 	margin-top: 20px;
 	
 }
 .login-form{
 	float:right;
 	padding: 5px;
 	width:200px;
 	margin-right: 20px;
 	margin-top:10px;
 	background-color: #eee;
 }
 
 input[type=submit]{
 	float: left;
 	margin-left: 130px;
 	margin-top: 13px;
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
	margin-right: 45px;
 	margin-top: 13px;
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
</style>
</head>
<body>
	<div class="wrapper">
		<div class="container">
			<div style="height: 180px;">
			</div>
			<div class="login-box">
			<h3>&nbsp;Login&nbsp;&nbsp;&nbsp;<span style="color: red;">${error}</span></h3>
			<h3></h3>
			<img alt="Logo" src="images/logo.png" class="image" style="width: 50px;height: 90px; float:left; margin-left: 30px; margin-top: 50px;">
					<form action="LoginController" method="post">
						<div class="login-form">
						<input type="text" name="txtuser" placeholder="User Name" required>
						<input type="password" name="txtpass" placeholder="Password" required><br>&nbsp;
						</div>
						<input type="submit" name="submit" value="Login">
						<input type="reset" name="clear" value="Clear">
					</form>
			</div>
			<div style="height: 200px;">
			</div>
		</div>
	</div>
</body>
</html>