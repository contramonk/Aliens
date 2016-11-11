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
</head>
<body>
<h1>Edit ${alien.name}</h1>

	<img src="${alien.image}" width="150px" height="150px"/>
	<p>Current Attributes</p>
	<p>Name: ${alien.name}</p>
	<p>Species: ${alien.species};
	<p>Star System: ${alien.starSystem}</p>
	<p>Faction: ${alien.faction}
	<p>Image: ${alien.image}

	<form action="update.do" method="POST">
	<input type="hidden" name="oldName" value="${alien.name}">
		<p>Name</p>
      	<input type="text" name="name" value="${alien.name}">
      	<p>Species</p>
        <input type="text" name="species" value="${alien.species}">
		<p>Star System</p>
		<input type="text" name="starSystem" value="${alien.starSystem}">
		<p>Faction</p>
		<input type="text" name="faction" value="${alien.faction}">
		<p>Image</p>
		<input type="text" name="image" value="${alien.image}">
		<p>Image</p>
        <input type="submit" value="Submit" /><br />
      </form>
</body>
</html>