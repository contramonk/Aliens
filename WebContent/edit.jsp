<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Alien</title>
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
	      </ul>
	    </div>
	  </div>
	</nav>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-4">
			<img class="img-circle" src="${alien.image}" />
		</div>
		<div class="col-sm-4">
			<ul>
				<li>Current Attributes</li>
				<li>Name: ${alien.name}</li>
				<li>Species: ${alien.species}</li>
				<li>Star System: ${alien.starSystem}</li>
				<li>Faction: ${alien.faction}</li>
			</ul>
		</div>
		<div class="col-sm-4">
			<form action="update.do" method="POST">
			<input type="hidden" name="oldName" value="${alien.name}">
			<div class="form-group">
				<label for="aName">Name</label>
		      	<input type="text" id="aName" name="name" value="${alien.name}">
			</div>
			<div class="form-group">
		      	<label for="aSpecies">Species</label>
		        <input type="text" id="aSpecies" name="species" value="${alien.species}">
			</div>
			<div class="form-group">
				<label for="aStarSystem">Star System</label>
				<input type="text" id="aStarSystem" name="starSystem" value="${alien.starSystem}">
			</div>
				<label for="aFaction">Email address</label>
				<input type="text" id="aFaction" name="faction" value="${alien.faction}">
			<div class="form-group">
				<label for="aImage">Image</label>
				<input type="text" id="aImage" name="image" value="${alien.image}">
			</div>
		        <input type="submit" value="Submit" />
		    
		    </form>
      	</div>
     </div>
 </div>
 <footer class="container-fluid bg-4 text-center" id="footer">
  <p>Jonathan Edwards | Skill Distillery SD7</p>
</footer>
</body>
</html>