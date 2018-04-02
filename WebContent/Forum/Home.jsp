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
</style>
<script type="text/javascript">
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
</script>
</head>
<body>
	<div class="wrapper">
		<div class="container">
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
					<li><a href="#">${name}</a></li>
				</ul>
			</div>	
 			</div>
 		<!-- Headeris Over -->
        	<div id="homepage_slider">
                <div id="slider">
                    <a href="#"><img src="images/slideshow/01.jpg" alt="Image 1" " /></a>
                    <a href="#"><img src="images/slideshow/02.jpg" alt="Image 2" " /></a>
                    <a href="#"><img src="images/slideshow/03.jpg" alt="Image 3" " /></a>
                    <a href="#"><img src="images/slideshow/04.jpg" alt="Image 4" " /></a>
                    <a href="#"><img src="images/slideshow/05.jpg" alt="Image 5" " /></a>
                     <a href="#"><img src="images/slideshow/06.jpg" alt="Image 5" " /></a>
                </div>
			</div>
			<div class="news">
				<h3 id="news">&nbsp;Latest News</h3>
				<marquee direction="up" scrolldelay="100s" id="mar">Tommorrow Going to be the College Day so request all the students
				to be come with the uniform all of you can make use of this platform to learn and grow.</marquee>
			</div> 
			<div class="Questions">
				<p style="color: purple;font-size: 24px;">All the Studets you can share your doubts and learn the Answer
				If you know the answer also you can share your Answers.
				It </p>
			</div> 
			<div class="Answers">
				<p style="color: purple;font-size: 24px;">These Informations Are Shared By All Other Students not only The Developers.</p>
			</div>
			<div class="about">
			<p>This platform is especially for the students who are would like to become programmers.What are the informations that are 
			available in forum can be used for learning</p>
			</div>
			<div class="online-users">
				<h3 id="news">&nbsp;Online Users</h3>
				<table>
				<c:forEach items="${students}" var="student" >
					<tr>
						<td>${student.name}</td>
					</tr>
				</c:forEach>
				</table>
			</div>
			<!-- Footer -->
			<div style="height: 40px;background-color: purple;color: white;float: left; width: 100%; margin-top: 45px;" align="center">
			Copyright © 2017 DForum, All Rights Reserved. Powered by <a id="poweredbylink" href="http://www.ferna.com/" >Innovate Softwares</a>
			</div>
		</div>
	</div>
</body>
</html>