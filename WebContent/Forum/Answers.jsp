<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/design.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/popup.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Questions and Answers</title>
<style type="text/css">
body {
	background-color: teal;
}
.container3{
	clear:both;
    background-color:#eee;
	margin:0 auto;
	width:1000px;
}
.questions{
	margin-top: 20px;
	font-family: Arial;
	font-size-adjust: inherit;
	background-color: white;
	border-bottom: 3px solid red;
	margin-right:10px;
	margin-left: 13px;
	font-size: 17px;
	line-height: 30px;
}
#ans{
	color: red;
	margin-right: 10px;
	cursor:pointer;
	text-decoration: none;
	font-family: Times New Roman;

}
#q1{
	color: Blue;
}

</style>
</head>
<body>
	<div class="wrapper">
		<div class="container3">
			<div class="header">
			<!-- Header Starts from Here -->
				<img src="images/header.jpg" style="width: 1000px; height: 200px;" />
				<div class="navigation">
				<ul>
					<li><a href="index.html">Home</a></li>
					<li><a href ="Questions?action=Questions">Ask Questions</a></li>
					<li><a href="Answers?action=Answers">Answers</a></li>
					<li><a href="ShareKnowledge?action=Share">Share</a></li>
					<li><a href="LoginController?action=logout">Logout</a></li>
				</ul>
			</div>	
 			</div>
 			<!-- Header Ends -->
 			<div>
 			
 				<c:forEach items="${answers}" var="answer">
 				<div class="questions">
 					<table>
 				<tr>
 				<td>
 					<div >
  						<span style="color: blue;"><c:out value="${answer.question }"></c:out><c:out value="${answer.id }"></c:out></span>
  						<br>
  						<c:out value="${answer.answer }"></c:out>
  						
					</div>
				</td>
				<td>
				<a onClick="document.getElementById('modal-wrapper').style.display='block'" id="ans">Edit</a>
				</td>
				</tr>
					</table>
				</div>
				<div id="modal-wrapper" class="modal">
    		<form class="modal-content animate" action="Answers" method="post">
    		<div class="imgcontainer">
      			<span onClick="document.getElementById('modal-wrapper').style.display='none'" class="close" title="Close PopUp">&times;</span>
			 </div>
    		<div class="container1" style="height: 400px; width: 300px;">
    			<input type="text" placeholder="Enter Question No" name="userid">
      			<textarea name="answer" placeholder="Type Answer Here...."></textarea>
      			<button value="Answer" name="submit" >Submit</button>
   			</div>
  			</form>
  			<script>
// If user clicks anywhere outside of the modal, Modal will close

var modal = document.getElementById('modal-wrapper');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
			</div>
 				</c:forEach>
 			</div>
 			<!-- Footer -->
			<div style="height: 40px;background-color: purple;color: white;"align="center">
			Copyright © 2017 DForum, All Rights Reserved. Powered by <a id="poweredbylink" href="http://www.ferna.com/" >Innovate Softwares</a>
			</div>
 		</div>
 </div>
</body>
</html>