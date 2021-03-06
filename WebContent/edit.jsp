<%@ page language="java" 
		 contentType="text/html; charset=UTF-8"
    	 pageEncoding="UTF-8"%>
    	 
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" 
	       prefix="c" %>
	       
<!DOCTYPE html>
<html>
	<head>
		<meta http-equiv="Content-Type" 
			  content="text/html; charset=UTF-8">
			  
		<!-- Latest compiled and minified CSS -->
		<link rel="stylesheet" 
			  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" 
			  integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" 
			  crossorigin="anonymous">
		
		<!-- Optional theme -->
		<link rel="stylesheet" 
			  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" 
			  integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" 
			  crossorigin="anonymous">
		
		<!-- Other CSS -->	  
		<link rel="stylesheet" 
			  href="styles.css" />
		
		<title>Edit Alien</title>
	</head>
<body>
	<!-- Navbar -->
	<nav class="navbar navbar-default">
	  <div class="container">
	    <div class="navbar-header">
	      <button type="button" 
	      		  class="navbar-toggle" 
	      		  data-toggle="collapse" 
	      		  data-target="#myNavbar">
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
					<label for="aName">Name</label><br />
			      	<input type="text" 
			      		   id="aName" 
			      		   name="name" 
			      		   value="${alien.name}">
				</div>
				<div class="form-group">
			      	<label for="aSpecies">Species</label><br />
			        <input type="text" 
			        	   id="aSpecies" 
			        	   name="species" 
			        	   value="${alien.species}">
				</div>
				<div class="form-group">
					<label for="aStarSystem">Star System</label><br />
					<input type="text" 
						   id="aStarSystem" 
						   name="starSystem" 
						   value="${alien.starSystem}">
				</div>
				<div class="form-group">
					<label for="aFaction">Faction</label><br />
					<input type="text" 
						   id="aFaction" 
						   name="faction" 
						   value="${alien.faction}">
				</div>
				<div class="form-group">
					<label for="aImage">Image</label><br />
					<input type="text" 
						   id="aImage" 
						   name="image" 
						   value="${alien.image}">
				</div>
			        <input type="submit" value="Submit" />
			    
			    </form>
	      	
	     	</div>
	 	</div>
	 </div>
	 
	 <footer class="container-fluid bg-4 text-center" id="footer">
	  	<p>Jonathan Edwards | Skill Distillery SD7 | Week 7</p>
	</footer>
</body>
</html>

<!-- BUG: If I am on this webpage too long and click Alien List Link, warning box
	pops up, saying I may duplicate data. When I click OK, arraylist reverts to
	original data -->