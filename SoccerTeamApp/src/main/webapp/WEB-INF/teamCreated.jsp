<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Created</title>
</head>
<body>
	<c:choose>
		<c:when test="${teamToCreate != null}">
			<h1>Team created Successfully</h1>
		</c:when>
		<c:otherwise>Unable to create Team</c:otherwise>
	</c:choose>
	<a href="index.do"><button>Home</button></a>
</body>
</html>