<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

<title>Aliens</title>
<style>
body {
      font: 20px Montserrat, sans-serif;
      line-height: 1.8;
      color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 {
      background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  .bg-2 {
      background-color: #474e5d; /* Dark Blue */
      color: #ffffff;
  }
  .bg-3 {
      background-color: #ffffff; /* White */
      color: #555555;
  }
  .bg-4 {
      background-color: #2f2f2f; /* Black Gray */
      color: #fff;
  }
  .container-fluid {
      padding-top: 70px;
      padding-bottom: 70px;
  }
  body > .container-fluid:nth-of-type(odd) {
  	background-color: #ffffff; /* White */
      color: #555555;
  }
  body > .container-fluid:nth-of-type(even) {
   	  background-color: #1abc9c; /* Green */
      color: #ffffff;
  }
  button {
  	color: #555555;
  }
  .navbar {
      padding-top: 15px;
      padding-bottom: 15px;
      border: 0;
      border-radius: 0;
      margin-bottom: 0;
      font-size: 12px;
      letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
      color: #1abc9c !important;
  }
  </style>
</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-default">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
	      <a class="navbar-brand" href="#">Alien List</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="add.html">Add Alien</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	
	
	
	
	<c:forEach var="a" items="${aliensList}">
	<div class="container-fluid">
		<div id="row">
			<div class="col-sm-4">
				<img class="img-circle" class="img-responsive margin" src="${a.image}" height="300" width="300" />
			</div>
			<div class="col-sm-4">
				<ul>
					<li><b>Name:</b> ${a.name}</li>
					<li><b>Species:</b> ${a.species}</li>
					<li><b>Star System:</b> ${a.starSystem}</li>
					<li><b>Faction:</b> ${a.faction}</li>
				</ul>
			</div>
			<div class="col-sm-4">
				<form style="float:left" action="remove.do">
				<button name="remove" value="${a.name}">Remove</button>
				</form>
				<form action="edit.do">
				<button name="edit" value="${a.name}" onclick="edit.do">Edit</button>
				</form>
				
			</div>
		</div>
		
	</div>
	</c:forEach>
	<p>test</p>

</body>
</html>