<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Edit Alien</title>
</head>
<body>
<h1>Edit ${alien.name}</h1>

	<p>Current Attributes</p>
	<p>Name: ${alien.name}</p>
	<p>Species: ${alien.species};
	<p>Star System: ${alien.starSystem}</p>
	<p>Faction: ${alien.faction}
	<p>Image: ${alien.image }

	<form action="update.do" method="POST">
	<input type="hidden" name="oldName" value="${alien.name}" }>
		<p>Name</p>
      	<input type="text" name="name">
      	<p>Species</p>
        <select name="species">
		  <option value="nativeReptilian">Native Reptilian</option>
		  <option value="alphaDraconian">Alpha Draconian</option>
		  <option value="grey">Grey</option>
		  <option value="sirian">Sirian</option>
		</select>
		<p>Star System</p>
		<input type="text" name="starSystem"><br />
		<input type="text" name="image"><br />
        <input type="submit" value="Submit" /><br />
      </form>
</body>
</html>