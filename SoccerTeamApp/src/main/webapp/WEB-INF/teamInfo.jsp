<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>Team: ${team.name}</h1>
	<ul>
		<li>League: ${team.league}</li>
		<li>Stadium: ${team.stadium}</li>
		<li>City: ${team.city}</li>
		<li>Country: ${team.country}</li>
		<li>Domestic Titles: ${team.domesticTitles}</li>
	</ul>
	<a href="index.do">Home</a>
</body>
</html>