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
</head>
<body>
<div class="container">
	<div class="jumbotron text-center">
	  <h1>Aliens</h1>
	  <p>woot!</p>
	</div>
	
	<h1>Aliens</h1>
	
	<div><a href="add.html">Add Alien</a></div>
	
	
	<c:forEach var="a" items="${aliensList}" varStatus="loop">
		<div class="panel-group" style="float:left">
			<div class="panel panel-default">
				<p>${a.name}</p>
			</div>
			<div class="panel panel-default">
				<img class="img-circlesrc" src="${a.image}" height="150" width="150" />
			</div>
			<div class="panel panel-default">
				<p>${a.species}</p>
				<p>${a.starSystem}</p>
				<p>${a.faction}</p>
			</div>
				<form style="float:left" action="remove.do">
				<button name="remove" value="${a.name}">Remove</button>
				</form>
				<form action="edit.do">
				<button name="edit" value="${a.name}" onclick="edit.do">Edit</button>
				</form>
				</div>
		
	</c:forEach>
	<div style="clear: both;"></div>
	<p>test</p>
</div>

</body>
</html>