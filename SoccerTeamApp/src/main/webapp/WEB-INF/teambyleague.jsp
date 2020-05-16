<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Teams in League</title>
</head>
<body>
	<ul>
		<c:forEach var="team" items="${teams}">
			<li><a href="getSoccerTeam.do?id=${team.id}">${team.name}</a></li>
		</c:forEach>
	</ul>
</body>
</html>