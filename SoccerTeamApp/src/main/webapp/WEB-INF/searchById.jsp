<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Search by ID</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Righteous">
</head>
<body>
	<form action="getSoccerTeam.do" method="GET">
		<label class="inputText">Team ID:</label> <input type="text" name="id" />
		<input type="submit" value="Search" />
	</form>
	<a href="index.do"><button>Home</button></a>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>