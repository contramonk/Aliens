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


<title>Aliens</title>
<link rel="stylesheet" href="styles.css" />
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
	      <a class="navbar-brand" href="list.do">Alien List</a>
	    </div>
	    <div class="collapse navbar-collapse" id="myNavbar">
	      <ul class="nav navbar-nav navbar-right">
	        <li><a href="add.html">Add Alien</a></li>
	        <li><a href="sort.do">Filter</a></li>
	      </ul>
	    </div>
	  </div>
	</nav>
	
	
	<c:forEach var="a" items="${aliensList}">
	<div class="container-fluid">
		<div id="row">
			<div class="col-sm-4">
				<img class="img-circle" src="${a.image}"  />
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
	<!-- Footer -->
<footer class="container-fluid bg-4 text-center" id="footer">
  <p>Jonathan Edwards | Skill Distillery SD7 | Week 7</p>
</footer>

</body>
</html>