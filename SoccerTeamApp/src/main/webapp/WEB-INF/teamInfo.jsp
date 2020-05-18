<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Righteous">
</head>
<body>

	<h1 class="indexH1">Team: ${team.name}</h1>
	<ul>
		<li>League: ${team.league}</li>
		<li>Stadium: ${team.stadium}</li>
		<li>City: ${team.city}</li>
		<li>Country: ${team.country}</li>
		<li>Domestic Titles: ${team.domesticTitles}</li>
		<li><img src="${team.teamLogo}" /></li>
	</ul>
	<div class="btn-group">
		<a href="index.do"><button>Home</button></a> <a
			href="update.do?id=${team.id}"><button>Update</button></a>
		<form action="delete.do?id=${team.id}" method="post">
			<input type="submit" value="Delete" />
		</form>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>