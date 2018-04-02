<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/design.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/popup.css" type="text/css" media="screen" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<script src="../js/jquery.min.js"></script>
<script src="../js/jquery-1.10.2.min.js"></script>
<title>Share Your Knowledge</title>
<style type="text/css">
body {
	background-color: teal;
}
.questions{
	margin-top: 20px;
	font-family: Arial;
	color: Blue;
	font-size-adjust: inherit;
	margin-right:10px;
	margin-left: 13px;
	font-size: 17px;
	line-height: 30px;
}
.container3{
	clear:both;
    background-color:#eee;
	margin:0 auto;
	width:1000px;
}
#ans{
	color: red;
	text-decoration: none;
	font-family: Times New Roman;

}
#questions{
	background-color: white;
	border-bottom: 3px solid red; 
}
</style>
</head>
<body>
<div class="wrapper">
		<div class="container3">
		<!-- Header Starts from Here -->
			<div class="header">
				<img src="images/header.jpg" style="width: 1000px; height: 200px;" />
				<div class="navigation">
				<ul>
					<li><a href="Questions?action=Home">Home</a></li>
					<li><a href ="Questions?action=Questions">Ask Questions</a></li>
					<li><a href="Answers?action=Answers">Answers</a></li>
					<li><a href="ShareKnowledge?action=Share">Share</a></li>
					<li><a href="LoginController?action=logout">Logout</a></li>
				</ul>
			</div>
 			</div>
 			<!-- Header Ends -->
 			<div class="questions">
 			<c:forEach items="${share}" var="sha">
 			<table>
 				<tr>
 				<td>
 					<div id="questions">
  						<c:out value="${sha.share }"></c:out>
					</div>
				</td>
				</tr>
			</table>
			</c:forEach>
			</div>
			<button onClick="document.getElementById('modal-wrapper1').style.display='block'">Share</button>
			<script>
// If user clicks anywhere outside of the modal, Modal will close

var modal = document.getElementById('modal-wrapper1');
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>
			<div id="modal-wrapper1" class="modal1">
    		<form class="modal-content1 animate1" action="ShareKnowledge" method="post">
    		<div class="imgcontainer">
      			<span onClick="document.getElementById('modal-wrapper1').style.display='none'" class="close1" title="Close PopUp">&times;</span>
			 </div>
    		<div class="container2" style="height: 400px; width: 300px;">
      			<textarea name="share" placeholder="Type Here"></textarea>
      			<button value="Share" name="submit" >Submit</button>
   			</div>
  			</form>
			</div>
			<!-- Footer -->
			<div style="height: 40px; background-color: purple;color: white;"align="center">
			Copyright � 2017 DForum, All Rights Reserved. Powered by <a id="poweredbylink" href="http://www.ferna.com/" >Innovate Softwares</a>
			</div>
 	</div>
 </div>
</body>
</html>