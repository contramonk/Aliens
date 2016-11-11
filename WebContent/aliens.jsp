<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Aliens</title>
</head>
<body>
<h1>Aliens</h1>
<a href="add.html">Add Alien</a>

<c:forEach var="a" items="${aliensList}">
	<div>
	<p>${a.name}</p>
	<form action="remove.do">
	<button class="button" name="remove" value="${a.name}">Remove</button>
	</form>
	<form action="edit.do">
	<button class="button" name="edit" value="${a.name}" onclick="edit.do">Edit</button>
	</form>
	</div>
</c:forEach>

</body>
</html>