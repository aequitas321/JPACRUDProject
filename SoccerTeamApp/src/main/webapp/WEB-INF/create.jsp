<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Team Creation</title>
<jsp:include page="bootstrapHead.jsp" />
<link rel="stylesheet" type="text/css" href="resources/styles.css">
<link rel="stylesheet"
  href="https://fonts.googleapis.com/css?family=Righteous">
</head>
<body>
	<form action="createTeam.do" method="POST">
		<div class="form-group">
			<label for="name">Team Name</label><input type="text" id="name"
				name="name" />
		</div>
		<div class="form-group">
			<label for="league">League</label><input type="text" id="league"
				name="league" />
		</div>
		<div class="form-group">
			<label for="city">City</label><input type="text" id="city"
				name="city" />
		</div>
		<div class="form-group">
			<label for="country">Country</label><input type="text" id="country"
				name="country" />
		</div>
		<div class="form-group">
			<label for="stadium">Stadium Name</label><input type="text"
				id="stadium" name="stadium" />
		</div>
		<div class="form-group">
			<label for="domesticTitles">League Titles won</label><input
				type="number" min="0" id="domesticTitles" name="domesticTitles" />
		</div>
		<input type="submit" value="Create Team" />
	</form>
	<a href="index.do"><button>Home</button></a>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>