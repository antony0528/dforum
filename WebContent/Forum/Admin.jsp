<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="css/design.css" type="text/css" media="screen" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
<script src="js/jquery.min.js" type="text/javascript"></script>
<script src="js/jquery.nivo.slider.js" type="text/javascript"></script>
<style type="text/css">
body {
	background-color: teal;
}
.container1
{
    clear:both;
    background-color:#eee;
	margin:0 auto;
	width:1000px;
}
</style>
<!-- <script type="text/javascript">
$(window).load(function() {
	$('#slider').nivoSlider({
		effect:'random',
		slices:15,
		animSpeed:600,
		pauseTime:2400,
		startSlide:0, //Set starting Slide (0 index)
		directionNav:false, 
		directionNavHide:false, //Only show on hover
		controlNav:false, //1,2,3...
		controlNavThumbs:false, //Use thumbnails for Control Nav
		pauseOnHover:true, //Stop animation while hovering
		manualAdvance:false, //Force manual transitions
		captionOpacity:0.7, //Universal caption opacity
		beforeChange: function(){},
		afterChange: function(){},
		slideshowEnd: function(){} //Triggers after all slides have been shown
	});
});
</script> -->
</head>
<body>
	<div class="wrapper">
		<div class="container1">
			<div class="header">
			<!-- Header Starts from Here -->
				<img src="images/header.jpg" style="width: 1000px; height: 200px;" />
				<div class="navigation">
				<ul>
					<li><a href="">Home</a></li>
					<li><a href ="Questions?action=Questions">Ask Questions</a></li>
					<li><a href="Answers?action=Answers">Answers</a></li>
					<li><a href="ShareKnowledge?action=Share">Share</a></li>
					<li><a href="LoginController?action=logout">Logout</a></li>
					<li><a href="RegisterAccount?action=Register">Register Student</a>
					<li><a href="#">${name}</a></li>
				</ul>
			</div>	
 			</div>
 		<!-- Headeris Over -->
 		<h3>Student Details</h3>
 			<table border="3">
 			<tr>
 			<th>Id</th>
 			<th>Name</th>
 			<th>Year</th>
 			<th>Department</th>
 			<th>Username</th>
 			<th>Password</th>
 			</tr>
        	<c:forEach items="${students }" var="student">
        	<tr>
        	<td><c:out value="${student.id }"></c:out></td>
        	<td><c:out value="${student.name }"></c:out></td>
        	<td><c:out value="${student.year }"></c:out></td>
        	<td><c:out value="${student.department}"></c:out></td>
        	<td><c:out value="${student.username }"></c:out></td>
        	<td><c:out value="${student.password }"></c:out></td>
        	</tr>
        	</c:forEach>
        	</table>
			<!-- Footer -->
			<div style="height: 40px;background-color: purple;color: white;float: left; width: 100%; " align="center">
			Copyright © 2017 DForum, All Rights Reserved. Powered by <a id="poweredbylink" href="http://www.ferna.com/" >Innovate Softwares</a>
			</div>
		</div>
	</div>
</body>
</html>